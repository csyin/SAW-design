function [time_in_the_plot,amplitude_in_the_plot,substrate_name,temp_freq,temp_freq_value]=correlation_temperature_effect(substrate,fo,cycles_per_chip,temp_freq_difference,code_length,code_sequence)

% Inputs
%substrate=1/2/3/...
%temp_freq_difference= temperature or frequency difference between encoder and decoder in degree C or MHZ for example:'T20' for 20 C and 'F2' for 2 MHz difference
%code_sequence= code sequence in character format.For example '111010100110'
% code_length = length of the code
% fo = carrier frequency in MHz
% cycles_per_chip = no of carrier cycles per chip


% Outputs
% time = time
% amplitude = amplitude of correlation

% Paul H. Carr et all" The effect of temperature and doppler shift on the performance of 
% elastic surface wave encoders and decoders"
% IEEE transactions on sonics and ultrasonics,July 1972 pp 360

format long;

sequence_length=length(code_sequence);
if sequence_length ~= code_length  % Code sequence check against code length
    fprintf('Your code_sequence entry is not correct. Enter correct code_sequence and run the program again');
    return;
end

switch substrate 
% temperature coefficient of delay
case 1 % YZ LinbO3
        Tt= 85e-6;
        substrate_name='YZ LiNb03';
case 2 % YX Quartz
    Tt= -24e-6;
    substrate_name='YX Quartz';
case 3 % YZ LiTaO3
    Tt= 35e-6; 
    substrate_name='YZ LiTa03';
case 4 % GaAs
    Tt= 52e-6;
    substrate_name='GaAs';
case 5 % ST Quartz
    Tt=0;
    substrate_name='ST Quartz';
end

fo=1000000*fo; % conversion of MHz to hertz
td=1/fo; % carrier signal period

del= cycles_per_chip*td; % duration of a chip

time =[0:del:(code_length*del )]; % taking the time matrix
del_dash=del*ones(1,length(time));
time_dash=rem(time,del_dash);
k=floor(time./del);

% figuring out whether temperature difference input or frequency difference input
temp_freq_difference=char(temp_freq_difference);
temp_freq=upper(temp_freq_difference(1));
temp_freq_length=length(temp_freq_difference);
index_while=2;
temp_freq_value=[];

while index_while <= temp_freq_length
    temp_freq_value=strcat(temp_freq_value, temp_freq_difference(index_while));
    index_while=index_while + 1;
end

temp_freq_num = str2num(temp_freq_value);



% Paul H. Carr et all" The effect of temperature and doppler shift on the performance of 
% elastic surface wave encoders and decoders"
% IEEE transactions on sonics and ultrasonics,July 1972 pp 359

if temp_freq =='T'
del_phi=2*pi*cycles_per_chip*Tt*temp_freq_num;
s=strvcat(substrate_name,strcat('temp difference=',temp_freq_value,'C'));
% ST Quartz has zero temperature co-efficient
  if substrate ==5
  fo = fo/1000000;    
  [time_in_the_plot,amplitude_in_the_plot,substrate_name]=SAW_correlator_no_temp_diff(substrate,fo,cycles_per_chip,code_length,code_sequence);
  plot(time_in_the_plot,amplitude_in_the_plot),title(strcat('Correlation response - code:',code_sequence)),xlabel('time'),ylabel('normalized amplitude'),legend(s),grid;
  return
  end
elseif temp_freq == 'F'
temp_freq_num= 1000000*temp_freq_num;    
del_phi=2*pi*cycles_per_chip*(temp_freq_num/fo); % EQ 12 page363 above reference
 s=strvcat(substrate_name,strcat('frequency difference=',temp_freq_value,'MHz')); 
else
    fprintf('Your temp_freq_difference input format is not correct - Enter correct format and run the program again');
    return
end

    

kai_p1= -(del/j*del_phi)*(exp(((-j*del_phi/del)*(del_dash - time_dash)))- ones(1,length(time)));
time2_dash = del_dash - time_dash;

kai_p2= -(del/j*del_phi)*(exp(((-j*del_phi/del)*(del_dash - time2_dash)))- ones(1,length(time)));

% construction code sequence vector
count=1;
Cn=[];
while count <=code_length
    if code_sequence(1,count)=='1'
        Cn=[Cn 1];
    elseif code_sequence(1,count)=='0' 
        Cn=[Cn -1];
    end
    count = count +1;
end

n=1:1:code_length;

exponential_term1= exp(-j*del_phi.*(n-1));

Cn1= Cn .* exponential_term1;

exponential_term2= exp(-j*del_phi.*n);
Cn2= Cn .* exponential_term2;

ccc=length(k);
nnn=1;

sum1=[];
sum2=[];

while nnn <= ccc
    pad_zero1=zeros(1,k(1,nnn));
    
    Cnn1=[pad_zero1 Cn1];
    Cnn2=[Cn pad_zero1];
    
    Cnn2_transpose= Cnn2';
    temp_sum1= Cnn1*Cnn2_transpose;
    sum1=[sum1 temp_sum1];
    
     pad_zero2=zeros(1,k(1,nnn)+1);
    
    Cnnn1=[pad_zero2 Cn2];
    Cnnn2=[Cn pad_zero2];
    
    Cnnn2_transpose= Cnnn2';
    temp_sum2= Cnnn1*Cnnn2_transpose;
    sum2=[sum2 temp_sum2];
    
    nnn=nnn+1;
    
end

term1= kai_p1.* sum1;
term2= kai_p2.* sum2;

amplitude = term1 + term2;

amplitude= abs(amplitude);

% finding maximum sidelobe
% correlation peak is the amplitude(1,1)
total_points= length(amplitude);
ssss=2;
sidelobe_matrix = [];
while ssss < total_points
    if amplitude(1,ssss) > amplitude (1,ssss-1) & amplitude(1,ssss)> amplitude(1,1+ssss)
        sidelobe_matrix=[sidelobe_matrix amplitude(1,ssss)];
    end
    ssss = ssss +1;
end

maximum_sidelobe = max(sidelobe_matrix);

if isempty(sidelobe_matrix)==1
    fprintf('No sidelobe found. Try different data.');
    return
else   
    
amplitude=amplitude./maximum_sidelobe; % relative amplitude to side_lobe
end



time_other_half = fliplr(time);
time_other_half =-1*time_other_half;
amplitude_other_half=fliplr(amplitude);

time_in_the_plot=[ time_other_half time];
amplitude_in_the_plot = [amplitude_other_half amplitude];



plot(time_in_the_plot,amplitude_in_the_plot),title(strcat('Correlation response - code:',code_sequence)),xlabel('time'),ylabel('normalized amplitude'),legend(s),grid;

return
    

    



