function varargout = Different_temp_freq_shift(varargin)
% FREQ_TEMP_SHIFT Application M-file for Correlator_ideal_response.fig
%    FIG = FREQ_TEMP_SHIFT launch Correlator_ideal_response GUI.
%    FREQ_TEMP_SHIFT('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 11-Aug-2002 22:45:58

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
	catch
		disp(lasterr);
	end

end


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.



% --------------------------------------------------------------------
function varargout = radiobutton1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton1.
set(handles.radiobutton1, 'Value', 1);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);


% --------------------------------------------------------------------
function varargout = radiobutton2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton2.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 2);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton3.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 3);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton4.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 4);
set(handles.radiobutton5, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton5.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 5);


% --------------------------------------------------------------------
function varargout = radiobutton6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton5.
set(handles.radiobutton6, 'Value', 1);
set(handles.radiobutton7, 'Value', 0);
set(handles.edit5, 'String','0');
set(handles.edit6, 'String','60');
set(handles.edit7, 'String','80');
set(handles.edit8, 'String', '100');

set(handles.text7, 'String','degree C');
set(handles.text8, 'String','degree C');
set(handles.text9, 'String','degree C');
set(handles.text10, 'String', 'degree C');

set(handles.text11, 'String','Temp difference 1  :');
set(handles.text12, 'String','Temp difference 2 :');
set(handles.text13, 'String','Temp difference 3 :');
set(handles.text14, 'String', 'Temp difference 4:');




% --------------------------------------------------------------------
function varargout = radiobutton7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton5.
set(handles.radiobutton7, 'Value', 1);
set(handles.radiobutton6, 'Value', 0);

set(handles.edit5, 'String','.1');
set(handles.edit6, 'String','.2');
set(handles.edit7, 'String','.3');
set(handles.edit8, 'String', '.4');

set(handles.text7, 'String','MHz');
set(handles.text8, 'String','MHz');
set(handles.text9, 'String','MHz');
set(handles.text10, 'String', 'MHz');

set(handles.text11, 'String','Frequency shift 1  :');
set(handles.text12, 'String','Frequency shift 2 :');
set(handles.text13, 'String','Frequency shift 3 :');
set(handles.text14, 'String', 'Frequency shift 4:');




% --------------------------------------------------------------------
function varargout = edit1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.



% --------------------------------------------------------------------
function varargout = edit2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.



% --------------------------------------------------------------------
function varargout = edit3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.



% --------------------------------------------------------------------
function varargout = edit4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.

function varargout = edit5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
get(handles.edit5,'String');

function varargout = edit6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
get(handles.edit6,'String');

function varargout = edit7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
get(handles.edit7,'String');

function varargout = edit8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
get(handles.edit8,'String');




% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton1.

% Binary input check
binary_string= get(handles.edit4, 'String');
binary_string = strrep(binary_string,'0','1'); % to get rid of the problem of leading zeros convert all zeros to ones

convert_dec= bin2dec(binary_string);
convert_binary= dec2bin(convert_dec);
convert_binary_string = num2str(convert_binary);
Is_binary= strcmp(binary_string, convert_binary_string);
% Error check
if (isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit2, 'String')))...
   + isempty(str2num(get(handles.edit3, 'String')))+ isempty(str2num(get(handles.edit4, 'String')))...
+ isempty(str2num(get(handles.edit5, 'String')))+ isempty(str2num(get(handles.edit6, 'String')))) ...
+ isempty(str2num(get(handles.edit7, 'String'))) + isempty(str2num(get(handles.edit8, 'String')))~=0 |...
(get(handles.radiobutton1,'value') + get(handles.radiobutton2,'value')...
    +get(handles.radiobutton3,'value')+ get(handles.radiobutton4,'value') + get(handles.radiobutton5,'value'))== 0 ...
 |Is_binary ~= 1 | (get(handles.radiobutton6,'value') + get(handles.radiobutton7,'value'))~= 1 ...
 |str2num(get(handles.edit3, 'String')) ~= length(get(handles.edit4, 'String')) 

In_Err_Diff_temp_freq_shift;

else
    substrate= get(handles.radiobutton1,'value') + get(handles.radiobutton2,'value')...
    +get(handles.radiobutton3,'value')+ get(handles.radiobutton4,'value') + get(handles.radiobutton5,'value');
    
    fo = str2num(get(handles.edit1, 'String'));
    code_length=str2num(get(handles.edit3, 'String'));
    code_sequence=get(handles.edit4, 'String');
    Cycles_perchip = str2num(get(handles.edit2, 'String'));
    
    if get(handles.radiobutton6, 'value') == 1
        % four inner ifs
        if str2num(get(handles.edit5, 'String')) == 0
            temp_freq_difference1 = '0';
        else
        temp_freq_difference1 = 'T';
        temp_freq_difference1 = strcat(temp_freq_difference1, get(handles.edit5,'String'));
             
        end
        
         if str2num(get(handles.edit6, 'String')) == 0
            temp_freq_difference2 = '0';
        else
        temp_freq_difference2 = 'T';
        temp_freq_difference2 = strcat(temp_freq_difference2, get(handles.edit6,'String'));
             
        end
        
         if str2num(get(handles.edit7, 'String')) == 0
            temp_freq_difference3 = '0';
        else
        temp_freq_difference3 = 'T';
        temp_freq_difference3 = strcat(temp_freq_difference3, get(handles.edit7,'String'));
             
        end
        
        
         if str2num(get(handles.edit8, 'String')) == 0
            temp_freq_difference4 = '0';
        else
        temp_freq_difference4 = 'T';
        temp_freq_difference4 = strcat(temp_freq_difference4, get(handles.edit8,'String'));
             
        end
    
    else
        % another four inner ifs
         if str2num(get(handles.edit5, 'String')) == 0
            temp_freq_difference1 = '0';
        else
        temp_freq_difference1 = 'F';
        temp_freq_difference1 = strcat(temp_freq_difference1, get(handles.edit5,'String'));
             
        end
        
         if str2num(get(handles.edit6, 'String')) == 0
            temp_freq_difference2 = '0';
        else
        temp_freq_difference2 = 'F';
        temp_freq_difference2 = strcat(temp_freq_difference2, get(handles.edit6,'String'));
             
        end
        
         if str2num(get(handles.edit7, 'String')) == 0
            temp_freq_difference3 = '0';
        else
        temp_freq_difference3 = 'F';
        temp_freq_difference3 = strcat(temp_freq_difference3, get(handles.edit7,'String'));
             
        end
        
        
         if str2num(get(handles.edit8, 'String')) == 0
            temp_freq_difference4 = '0';
        else
        temp_freq_difference4 = 'F';
        temp_freq_difference4 = strcat(temp_freq_difference4, get(handles.edit8,'String'));
             
        end
        
    end
    
    substrate = [substrate substrate substrate substrate];
    temp_freq_difference={ temp_freq_difference1 temp_freq_difference2 temp_freq_difference3 temp_freq_difference4};
    code_length= [code_length code_length code_length code_length];
    code_sequence= {code_sequence code_sequence code_sequence code_sequence};
    
    [time, amplitude,substrate_name]= Comparative_correlation(substrate, fo, Cycles_perchip, temp_freq_difference,code_length,code_sequence); 
     
    
       
end


% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton2.
delete(handles.figure1);





% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton3.
set(handles.figure1,'PaperPositionMode','auto');
h=handles.figure1;
orient (h,'landscape');
print(h);