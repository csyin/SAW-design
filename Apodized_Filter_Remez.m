function varargout = Apodized_Filter_Remez(varargin)
% APODIZED_FILTER_REMEZ Application M-file for Apodized_Filter_Remez.fig
%    FIG = APODIZED_FILTER_REMEZ launch Apodized_Filter_Remez GUI.
%    APODIZED_FILTER_REMEZ('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 11-Aug-2002 22:39:53

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

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
function varargout = edit1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.
fs= get(handles.edit1, 'String');
fs_num= str2num(fs);
upper_limit= 1.5*fs_num;
upper_string= num2str(upper_limit);
lower_limit= .5*fs_num;
lower_string= num2str(lower_limit);

ssss= strcat(fs,'-',upper_string,' MHz');
set(handles.text4,'String',ssss);

ssss= strcat(lower_string,'-',fs,' MHz');
set(handles.text5,'String',ssss);

if get(handles.radiobutton1,'Value')==1
    set(handles.text9,'String',fs);
else
   set(handles.text9,'String',lower_string);  
end
popupmenu1_Callback(h, eventdata, handles, varargin);



% --------------------------------------------------------------------
function varargout = radiobutton1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton1.

fs= get(handles.edit1, 'String');
fs_num= str2num(fs);
upper_limit= 1.5*fs_num;
upper_string= num2str(upper_limit);
lower_limit= .5*fs_num;
lower_string= num2str(lower_limit);

if get(handles.radiobutton1,'Value')==1
   set(handles.radiobutton2,'Value',0);
   set(handles.text9,'String',fs);
   
else
    set(handles.radiobutton2,'Value',1);
     set(handles.text9,'String',lower_string); 
end

popupmenu1_Callback(h, eventdata, handles, varargin);
% --------------------------------------------------------------------

% --------------------------------------------------------------------
function varargout = radiobutton2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton2.
fs= get(handles.edit1, 'String');
fs_num= str2num(fs);
upper_limit= 1.5*fs_num;
upper_string= num2str(upper_limit);
lower_limit= .5*fs_num;
lower_string= num2str(lower_limit);

if get(handles.radiobutton2,'Value')==1
   set(handles.radiobutton1,'Value',0);
   set(handles.text9,'String',lower_string); 
else
    set(handles.radiobutton1,'Value',1);
    set(handles.text9,'String',fs);
end

popupmenu1_Callback(h, eventdata, handles, varargin);


% --------------------------------------------------------------------
function varargout = slider1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.slider1.
disp('slider1 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = listbox2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.listbox2.
disp('listbox2 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = listbox3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.listbox3.
disp('listbox3 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = popupmenu1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.popupmenu1.
% Clear all edit boxes
set([handles.edit2,handles.edit3,handles.edit4,handles.edit5,handles.edit6,handles.edit7,handles.edit8,handles.edit9,handles.edit10,handles.edit11,handles.edit12,handles.edit13,handles.edit14,handles.edit15,handles.edit16,handles.edit17,handles.edit18,handles.edit19,handles.edit20,handles.edit21,handles.edit22,handles.edit23,handles.edit24,handles.edit25,handles.edit26,handles.edit27,handles.edit28,handles.edit29,handles.edit30,handles.edit31,handles.edit32,handles.edit33,handles.edit34,handles.edit35,handles.edit36,handles.edit37,handles.edit38,handles.edit39,handles.edit40,handles.edit41,handles.edit42,handles.edit43,handles.edit44],'String',' ','Style','edit');

fs= get(handles.edit1, 'String');
fs_num= str2num(fs);
upper_limit= 1.5*fs_num;
upper_string= num2str(upper_limit);
lower_limit= .5*fs_num;
lower_string= num2str(lower_limit);

num_str=get(handles.popupmenu1, 'Value');
edit_no1= 4+ (num_str-1)*3;
edit_no2= 5+ (num_str-1)*3;
str_edit_no1= num2str(edit_no1);
str_edit_no2 = num2str(edit_no2);

str_edit_no1 = strcat('edit',str_edit_no1);
str_edit_no2 = strcat('edit',str_edit_no2);

if get(handles.radiobutton1,'Value')==1
   
    
    set( getfield(handles,str_edit_no1),'String',upper_string);
    set( getfield(handles,str_edit_no2),'String','0');
    set( getfield(handles,str_edit_no1),'Style','text');
    set( getfield(handles,str_edit_no2),'Style','text');
    
else
    set( getfield(handles,str_edit_no1),'String',fs);
    set( getfield(handles,str_edit_no2),'String','0');
    set( getfield(handles,str_edit_no1),'Style','text');
    set( getfield(handles,str_edit_no2),'Style','text');
  
end

if num_str ==1
    set(handles.edit100,'String',1);
else
   set(handles.edit100,'String',0); 
end

% --------------------------------------------------------------------
function varargout = edit3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.

% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    

% --------------------------------------------------------------------
function varargout = edit7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit13_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit13.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit16_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit16.

% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    

% --------------------------------------------------------------------
function varargout = edit48_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit48.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit49_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit49.

% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    

% --------------------------------------------------------------------
function varargout = edit50_Callback(h, eventdata, handles, varargin)




% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton1.

f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
N=str2num(get(handles.edit50,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
LGRID=str2num(get(handles.edit51,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
    In_Err_Apodized_Filter_Remez;
else
    if LGRID<16
        LGRID = 16;
    end
    
    substrate= get(handles.radiobutton3,'value') + get(handles.radiobutton4,'value')...
    +get(handles.radiobutton5,'value')+ get(handles.radiobutton6,'value') + get(handles.radiobutton7,'value');
    
    [y,W]= SAWfilter(substrate,N,f,m,fs,stopband_attn,passband_ripple,LGRID);
end

% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton2.
delete(handles.figure1);



% --------------------------------------------------------------------
function varargout = edit51_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit51.



% --------------------------------------------------------------------
function varargout = radiobutton3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton3.
set(handles.radiobutton3, 'Value', 1);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);
set(handles.radiobutton6, 'Value', 0);
set(handles.radiobutton7, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton4.
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 2);
set(handles.radiobutton5, 'Value', 0);
set(handles.radiobutton6, 'Value', 0);
set(handles.radiobutton7, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton5.
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 3);
set(handles.radiobutton6, 'Value', 0);
set(handles.radiobutton7, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton6.
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);
set(handles.radiobutton6, 'Value', 4);
set(handles.radiobutton7, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton7.
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);
set(handles.radiobutton6, 'Value', 0);
set(handles.radiobutton7, 'Value', 5);



% --------------------------------------------------------------------
function varargout = edit2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit12.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit15_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit15.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit18_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit18.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit19_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit19.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit21_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit21.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit22_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit22.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit24_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit24.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit25_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit25.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit27_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit27.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit28_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit28.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit30_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit30.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit31_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit31.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit33_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit33.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit34_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit34.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit36_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit36.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit37_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit37.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit39_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit39.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit40_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit40.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit42_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit42.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = edit43_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit43.
% for minimum no of finger pairs
f=[str2num(get(handles.text9,'String')),str2num(get(handles.edit2,'String')),str2num(get(handles.edit3,'String')),str2num(get(handles.edit4,'String')),str2num(get(handles.edit6,'String')),str2num(get(handles.edit7,'String')),str2num(get(handles.edit9,'String')),str2num(get(handles.edit10,'String')),str2num(get(handles.edit12,'String')),str2num(get(handles.edit13,'String')),str2num(get(handles.edit15,'String')),str2num(get(handles.edit16,'String')),str2num(get(handles.edit18,'String')),str2num(get(handles.edit19,'String')),str2num(get(handles.edit21,'String')),str2num(get(handles.edit22,'String')),str2num(get(handles.edit24,'String')),str2num(get(handles.edit25,'String')),str2num(get(handles.edit27,'String')),str2num(get(handles.edit28,'String')),str2num(get(handles.edit30,'String')),str2num(get(handles.edit31,'String')),str2num(get(handles.edit33,'String')),str2num(get(handles.edit34,'String')),str2num(get(handles.edit36,'String')),str2num(get(handles.edit37,'String')),str2num(get(handles.edit39,'String')),str2num(get(handles.edit40,'String')),str2num(get(handles.edit42,'String')),str2num(get(handles.edit43,'String'))];
m=[str2num(get(handles.edit100,'String')),str2num(get(handles.edit100,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit5,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit8,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit11,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit14,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit17,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit20,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit23,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit26,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit29,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit32,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit35,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit38,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit41,'String')),str2num(get(handles.edit44,'String')),str2num(get(handles.edit44,'String'))];
fs= str2num(get(handles.edit1,'String'));
stopband_attn=str2num(get(handles.edit48,'String'));
passband_ripple=str2num(get(handles.edit49,'String'));
pop_value=get(handles.popupmenu1,'Value');

if isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit48, 'String')))+isempty(str2num(get(handles.edit49, 'String'))) +isempty(str2num(get(handles.edit50, 'String'))) + isempty(str2num(get(handles.edit51, 'String')))  ~=0 |length(f) ~= 2*(pop_value+1) | ~(isequal(f,unique(f))) |(f(length(f))~= fs & get(handles.radiobutton2,'Value')==1)|(f(length(f)) ~= 1.5*fs & get(handles.radiobutton1,'Value')==1)|...
   (isempty(str2num(get(handles.edit100,'String')))==1 & pop_value>0)| (isempty(str2num(get(handles.edit5,'String')))==1 & pop_value>0)|(isempty(str2num(get(handles.edit8,'String')))==1 & pop_value>1)|(isempty(str2num(get(handles.edit11,'String')))==1 & pop_value>2)|(isempty(str2num(get(handles.edit14,'String')))==1 & pop_value>3)|(isempty(str2num(get(handles.edit17,'String')))==1 & pop_value>4)|(isempty(str2num(get(handles.edit20,'String')))==1 & pop_value>5)|(isempty(str2num(get(handles.edit23,'String')))==1 & pop_value>6)|(isempty(str2num(get(handles.edit26,'String')))==1 & pop_value>7)|(isempty(str2num(get(handles.edit29,'String')))==1 & pop_value>8)|(isempty(str2num(get(handles.edit32,'String')))==1 & pop_value>9)|(isempty(str2num(get(handles.edit35,'String')))==1 & pop_value>10)|(isempty(str2num(get(handles.edit38,'String')))==1 & pop_value>11)|(isempty(str2num(get(handles.edit41,'String')))==1 & pop_value>12)|(isempty(str2num(get(handles.edit44,'String')))==1 & pop_value>13)|length(m) ~= 2*(pop_value+1)
   
else
        
    [N_min]=minimum_finger_pairs(passband_ripple, stopband_attn, f ,fs);
    N_min= num2str(N_min);
    set(handles.text61,'String',N_min);
     set(handles.edit50,'String',N_min);
end    


% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton3.
help_apodized_filter;


% --------------------------------------------------------------------
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton4.
set(handles.figure1,'PaperPositionMode','auto');
h=handles.figure1;
orient (h,'landscape');
print(h);