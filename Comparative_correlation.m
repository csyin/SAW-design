function [time,amplitude,substrate_name]=Comparative_correlation(substrates,fo,cycles_per_chip,temp_freq_difference,code_length,code_sequence)

format long;

if length(temp_freq_difference) ~= 4  | length(substrates) ~= 4 | length(code_length) ~= 4 | length(code_sequence) ~= 4
    
    fprintf('There are errors in program inputs. Check it out and run the program again');
    
    % Example:temp_freq_difference={'T20' 'T40' 'T60' 'T80'} or temp_freq_difference={'F2' 'F4' 'F6' 'F8'}
    return;
end

count = 1;


    
if strcmp(temp_freq_difference(1),'0') == 1
    [X1,Y1,substrate_name1]=SAW_correlator_no_temp_diff(substrates(1,1),fo,cycles_per_chip,code_length(1,1),char(code_sequence(1)));
    temp_freq1='N';
else
    [X1,Y1,substrate_name1,temp_freq1,temp_freq_value1]=correlation_temperature_effect(substrates(1,1),fo,cycles_per_chip,temp_freq_difference(1),code_length(1,1),char(code_sequence(1)));
end




if strcmp(temp_freq_difference(2),'0') ==1
    [X2,Y2,substrate_name2]=SAW_correlator_no_temp_diff(substrates(1,2),fo,cycles_per_chip,code_length(1,2),char(code_sequence(2)));
    temp_freq2='N';
else
    [X2,Y2, substrate_name2,temp_freq2,temp_freq_value2]=correlation_temperature_effect(substrates(1,2),fo,cycles_per_chip,temp_freq_difference(2),code_length(1,2),char(code_sequence(2)));
end


if strcmp(temp_freq_difference(3),'0')==1
    [X3,Y3,substrate_name3]=SAW_correlator_no_temp_diff(substrates(1,3),fo,cycles_per_chip,code_length(1,3),char(code_sequence(3)));
    temp_freq3='N';
else
    [X3,Y3, substrate_name3,temp_freq3,temp_freq_value3]=correlation_temperature_effect(substrates(1,3),fo,cycles_per_chip,temp_freq_difference(3),code_length(1,3),char(code_sequence(3)));
end


if strcmp(temp_freq_difference(4),'0')==1
    [X4,Y4,substrate_name4]=SAW_correlator_no_temp_diff(substrates(1,4),fo,cycles_per_chip,code_length(1,4),char(code_sequence(4)));
    temp_freq4='N';
else
    [X4,Y4,substrate_name4,temp_freq4,temp_freq_value4]=correlation_temperature_effect(substrates(1,4),fo,cycles_per_chip,temp_freq_difference(4),code_length(1,4),char(code_sequence(4)));
end

time=X1;
amplitude=Y1;
substrate_name=substrate_name1;

switch temp_freq1
case 'T'
s1=strvcat(substrate_name1,strcat('temp difference=',temp_freq_value1,'C'));
case 'F'
 s1=strvcat(substrate_name1,strcat('freq difference=',temp_freq_value1,'MHz')); 
case 'N'
    s1 = strvcat(substrate_name1,'No temp or freq difference');
end

switch temp_freq2
case 'T'
s2=strvcat(substrate_name2,strcat('temp difference=',temp_freq_value2,'C'));
case 'F'
 s2=strvcat(substrate_name2,strcat('freq difference=',temp_freq_value2,'MHz')); 
case 'N'
    s2 = strvcat(substrate_name2,'No temp or freq difference');
end

switch temp_freq3
case 'T'
s3=strvcat(substrate_name3,strcat('temp difference=',temp_freq_value3,'C'));
case 'F'
 s3=strvcat(substrate_name3,strcat('freq difference=',temp_freq_value3,'MHz')); 
case 'N'
    s3 = strvcat(substrate_name3,'No temp or freq difference');
end

switch temp_freq4
case 'T'
s4=strvcat(substrate_name4,strcat('temp difference=',temp_freq_value4,'C'));
case 'F'
 s4=strvcat(substrate_name4,strcat('freq difference=',temp_freq_value4,'MHz')); 
case 'N'
    s4 = strvcat(substrate_name4,'No temp or freq difference');
end

subplot(2,2,1),plot(X1,Y1),xlabel('time'),ylabel('normalized amplitude'),title(strcat('code:',char(code_sequence(1)))),legend(s1,0),grid;
subplot(2,2,2),plot(X2,Y2),xlabel('time'),ylabel('normalized amplitude'),title(strcat('code:',char(code_sequence(2)))),legend(s2,0),grid;
subplot(2,2,3),plot(X3,Y3),xlabel('time'),ylabel('normalized amplitude'),title(strcat('code:',char(code_sequence(3)))),legend(s3,0),grid;
subplot(2,2,4),plot(X4,Y4),xlabel('time'),ylabel('normalized amplitude'),title(strcat('code:',char(code_sequence(4)))), legend(s4,0),grid;

return
