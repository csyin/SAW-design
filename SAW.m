function varargout = SAW(varargin)
% SAW Application M-file for SAW.fig
%    FIG = SAW launch SAW GUI.
%    SAW('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 11-Aug-2002 23:08:41

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

 function  Unapodized_SAW_Filter_Analysis_Callback(h, eventdata, handles, varargin)
 Unapodized_SAW_Filter;

 
 function  Correlator_ideal_response_Callback(h, eventdata, handles, varargin)
 Correlator_ideal_response;
 
 function  Corr_Frequency_Shift_temp_diff_Callback(h, eventdata, handles, varargin)
 Corr_Freq_temp_shift;
 
 function  Different_temp_freq_Callback(h, eventdata, handles, varargin)
 Different_temp_freq_shift ;
 
 function  Different_substrates_Callback(h, eventdata, handles, varargin)
 Different_substrates ;
  
 function  Different_codes_Callback(h, eventdata, handles, varargin)
 Different_codes;
 
 function  Apodized_Filter_Remez_Callback(h, eventdata, handles, varargin)
 Apodized_Filter_Remez;
 
 function  Multistrip_coupler_Callback(h, eventdata, handles, varargin)
 Multistrip_coupler_window  ;
  
 function  Quit_Callback(h, eventdata, handles, varargin)
 exit;
