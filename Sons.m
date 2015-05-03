function varargout = Sons(varargin)
% SONS MATLAB code for Sons.fig
%      SONS, by itself, creates a new SONS or raises the existing
%      singleton*.
%
%      H = SONS returns the handle to a new SONS or the handle to
%      the existing singleton*.
%
%      SONS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SONS.M with the given input arguments.
%
%      SONS('Property','Value',...) creates a new SONS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sons_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stopbutton.  All inputs are passed to Sons_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sons

% Last Modified by GUIDE v2.5 03-May-2015 15:01:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sons_OpeningFcn, ...
                   'gui_OutputFcn',  @Sons_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Sons is made visible.
function Sons_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sons (see VARARGIN)
global numMusique; %METTRE PARTOUUUUUUT
global numEffet;
numEffet=1;
numMusique=1;
% Choose default command line output for Sons
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sons wait for user response (see UIRESUME)
% uiwait(handles.Sons);


% --- Outputs from this function are returned to the command line.
function varargout = Sons_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Lecture.
function Lecture_Callback(hObject, eventdata, handles)
Lire('Kalimba.wav');
% hObject    handle to Lecture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function LireButton_Callback(hObject, eventdata, handles)
% hObject    handle to LireButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%lire(handles.current_data);
%Il faut d�finir global var dans dans toutes les fonctions qui l'utilise
global numMusique;
global numEffet;
global numRep;

display(numMusique);
display(numEffet);

switch numMusique
    case 1 % Piano
        switch numEffet
        case 1 % Normal
            switch numRep
                case 1
                    [x] = Lire('Kalimba.wav');
                    axes(handles.axes1); % Pour tracer sur le premier graph
                    plot(x,'b');
                    title('Signal Originel Temporelle');
                    axes(handles.axes2); % Pour tracer sur le second graph
                    plot(0,'m');
            end;
            case 2 %Avitesse
                exit(0);
            case 3 %CrossFade
                exit(0);
            case 4 %Echo
                exit(0);
            case 5 %Fade In
                exit(0);
            case 6 %Fade out
                exit(0);
            case 7 %Flanger
                exit(0);
            case 8 %HPitch
                exit(0);
            case 9 %LPitch
                exit(0);
            case 10 %Reverb
                exit(0);
            case 11 %Reverse
                exit(0);
            case 12 %Rvitesse
                exit(0);
            case 13 %Tremolo
                exit(0);
            case 14 %Vibrato
                exit(0);
            case 15 %Wawa
                exit(0);
            
        end;
    case 2 
            
end


% --- Executes on selection change in Effects.
function Effects_Callback(hObject, eventdata, handles)
% hObject    handle to Effects (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Effects contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Effects


% --- Executes during object creation, after setting all properties.
function Effects_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Effects (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Tracks.
function Tracks_Callback(hObject, eventdata, handles)
% hObject    handle to Tracks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Tracks contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Tracks


% --- Executes during object creation, after setting all properties.
function Tracks_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tracks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Pour quitter l'interface
function ExitButton_Callback(hObject, eventdata, handles)
% hObject    handle to ExitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.Sons) 




% --- Pour stopper la musique
function StopButton_Callback(hObject, eventdata, handles)
% hObject    handle to StopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear(player);
