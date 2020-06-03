function varargout = Projek(varargin)
% PROJEK MATLAB code for Projek.fig
%      PROJEK, by itself, creates a new PROJEK or raises the existing
%      singleton*.
%
%      H = PROJEK returns the handle to a new PROJEK or the handle to
%      the existing singleton*.
%
%      PROJEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEK.M with the given input arguments.
%
%      PROJEK('Property','Value',...) creates a new PROJEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Projek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Projek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Projek

% Last Modified by GUIDE v2.5 05-May-2020 10:42:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Projek_OpeningFcn, ...
                   'gui_OutputFcn',  @Projek_OutputFcn, ...
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


% --- Executes just before Projek is made visible.
function Projek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Projek (see VARARGIN)

% Choose default command line output for Projek
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Projek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Projek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function kualitas_Callback(hObject, eventdata, handles)
% hObject    handle to kualitas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kualitas as text
%        str2double(get(hObject,'String')) returns contents of kualitas as a double


% --- Executes during object creation, after setting all properties.
function kualitas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kualitas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function biaya_Callback(hObject, eventdata, handles)
% hObject    handle to biaya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of biaya as text
%        str2double(get(hObject,'String')) returns contents of biaya as a double


% --- Executes during object creation, after setting all properties.
function biaya_CreateFcn(hObject, eventdata, handles)
% hObject    handle to biaya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jarak_Callback(hObject, eventdata, handles)
% hObject    handle to jarak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jarak as text
%        str2double(get(hObject,'String')) returns contents of jarak as a double


% --- Executes during object creation, after setting all properties.
function jarak_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jarak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in proses.
function proses_Callback(hObject, eventdata, handles)
% hObject    handle to proses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1 = get(handles.kualitas,'string');
input2 = get(handles.biaya,'string');
input3 = get(handles.jarak,'string');
x1 = str2double(input1);
x2 = str2double(input2);
x3 = str2double(input3);

fis = readfis('Rumah_sakit');
Nilai = evalfis([x1,x2,x3],fis);

if Nilai <=3
    set(handles.hasil,'string','RS. Ukrain');
    set(handles.RMS,'string','RS. Ukrain');
elseif Nilai <=6
    set(handles.hasil,'string','RS. Singaraja');
    set(handles.RMS,'string','RS. Singaraja');
elseif Nilai <=8
    set(handles.hasil,'string','RS Sadewa');
    set(handles.RMS,'string','RS Sadewa');
elseif Nilai <=10
    set(handles.hasil,'string','RS Baturewa');
    set(handles.RMS,'string','RS Baturewa');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Nama_Callback(hObject, eventdata, handles)
% hObject    handle to Nama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nama as text
%        str2double(get(hObject,'String')) returns contents of Nama as a double


% --- Executes during object creation, after setting all properties.
function Nama_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Umur_Callback(hObject, eventdata, handles)
% hObject    handle to Umur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Umur as text
%        str2double(get(hObject,'String')) returns contents of Umur as a double


% --- Executes during object creation, after setting all properties.
function Umur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Umur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in LK.
function LK_Callback(hObject, eventdata, handles)
% hObject    handle to LK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LK


% --- Executes on button press in PR.
function PR_Callback(hObject, eventdata, handles)
% hObject    handle to PR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PR



function Alamat_Callback(hObject, eventdata, handles)
% hObject    handle to Alamat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Alamat as text
%        str2double(get(hObject,'String')) returns contents of Alamat as a double


% --- Executes during object creation, after setting all properties.
function Alamat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Alamat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in simpan.
function simpan_Callback(hObject, eventdata, handles)
% hObject    handle to simpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input4 = get(handles.Nama1,'string');
input5 = get(handles.Umur1,'string');
input6 = get(handles.Alamat1,'string');


set(handles.Nama,'string',input4);
set(handles.Umur,'string',input5);
set(handles.Alamat,'string',input6);


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function DU_Callback(hObject, eventdata, handles)
% hObject    handle to DU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DU as text
%        str2double(get(hObject,'String')) returns contents of DU as a double


% --- Executes during object creation, after setting all properties.
function DU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DT_Callback(hObject, eventdata, handles)
% hObject    handle to DT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DT as text
%        str2double(get(hObject,'String')) returns contents of DT as a double


% --- Executes during object creation, after setting all properties.
function DT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DL_Callback(hObject, eventdata, handles)
% hObject    handle to DL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DL as text
%        str2double(get(hObject,'String')) returns contents of DL as a double


% --- Executes during object creation, after setting all properties.
function DL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DB_Callback(hObject, eventdata, handles)
% hObject    handle to DB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DB as text
%        str2double(get(hObject,'String')) returns contents of DB as a double


% --- Executes during object creation, after setting all properties.
function DB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FU_Callback(hObject, eventdata, handles)
% hObject    handle to FU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FU as text
%        str2double(get(hObject,'String')) returns contents of FU as a double


% --- Executes during object creation, after setting all properties.
function FU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FT_Callback(hObject, eventdata, handles)
% hObject    handle to FT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FT as text
%        str2double(get(hObject,'String')) returns contents of FT as a double


% --- Executes during object creation, after setting all properties.
function FT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_Callback(hObject, eventdata, handles)
% hObject    handle to FL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL as text
%        str2double(get(hObject,'String')) returns contents of FL as a double


% --- Executes during object creation, after setting all properties.
function FL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FB_Callback(hObject, eventdata, handles)
% hObject    handle to FB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FB as text
%        str2double(get(hObject,'String')) returns contents of FB as a double


% --- Executes during object creation, after setting all properties.
function FB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MU_Callback(hObject, eventdata, handles)
% hObject    handle to MU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MU as text
%        str2double(get(hObject,'String')) returns contents of MU as a double


% --- Executes during object creation, after setting all properties.
function MU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MT_Callback(hObject, eventdata, handles)
% hObject    handle to MT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MT as text
%        str2double(get(hObject,'String')) returns contents of MT as a double


% --- Executes during object creation, after setting all properties.
function MT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ML_Callback(hObject, eventdata, handles)
% hObject    handle to ML (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ML as text
%        str2double(get(hObject,'String')) returns contents of ML as a double


% --- Executes during object creation, after setting all properties.
function ML_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ML (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MB_Callback(hObject, eventdata, handles)
% hObject    handle to MB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MB as text
%        str2double(get(hObject,'String')) returns contents of MB as a double


% --- Executes during object creation, after setting all properties.
function MB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SU_Callback(hObject, eventdata, handles)
% hObject    handle to SU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SU as text
%        str2double(get(hObject,'String')) returns contents of SU as a double


% --- Executes during object creation, after setting all properties.
function SU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ST_Callback(hObject, eventdata, handles)
% hObject    handle to ST (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ST as text
%        str2double(get(hObject,'String')) returns contents of ST as a double


% --- Executes during object creation, after setting all properties.
function ST_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ST (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SL_Callback(hObject, eventdata, handles)
% hObject    handle to SL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SL as text
%        str2double(get(hObject,'String')) returns contents of SL as a double


% --- Executes during object creation, after setting all properties.
function SL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SB_Callback(hObject, eventdata, handles)
% hObject    handle to SB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SB as text
%        str2double(get(hObject,'String')) returns contents of SB as a double


% --- Executes during object creation, after setting all properties.
function SB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SKU_Callback(hObject, eventdata, handles)
% hObject    handle to SKU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SKU as text
%        str2double(get(hObject,'String')) returns contents of SKU as a double


% --- Executes during object creation, after setting all properties.
function SKU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SKU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SKT_Callback(hObject, eventdata, handles)
% hObject    handle to SKT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SKT as text
%        str2double(get(hObject,'String')) returns contents of SKT as a double


% --- Executes during object creation, after setting all properties.
function SKT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SKT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SKL_Callback(hObject, eventdata, handles)
% hObject    handle to SKL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SKL as text
%        str2double(get(hObject,'String')) returns contents of SKL as a double


% --- Executes during object creation, after setting all properties.
function SKL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SKL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SKB_Callback(hObject, eventdata, handles)
% hObject    handle to SKB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SKB as text
%        str2double(get(hObject,'String')) returns contents of SKB as a double


% --- Executes during object creation, after setting all properties.
function SKB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SKB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in prediksi.
function prediksi_Callback(hObject, eventdata, handles)
% hObject    handle to prediksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=str2double(get(handles.DU,'String'));
B=str2double(get(handles.DT,'String'));
C=str2double(get(handles.DL,'String'));
D=str2double(get(handles.DB,'String'));
E=str2double(get(handles.FU,'String'));
F=str2double(get(handles.FT,'String'));
G=str2double(get(handles.FL,'String'));
H=str2double(get(handles.FB,'String'));
I=str2double(get(handles.MU,'String'));
J=str2double(get(handles.MT,'String'));
K=str2double(get(handles.ML,'String'));
L=str2double(get(handles.MB,'String'));
M=str2double(get(handles.SU,'String'));
N=str2double(get(handles.ST,'String'));
O=str2double(get(handles.SL,'String'));
P=str2double(get(handles.SB,'String'));
Q=str2double(get(handles.SKU,'String'));
R=str2double(get(handles.SKT,'String'));
S=str2double(get(handles.SKL,'String'));
T=str2double(get(handles.SKB,'String'));
data = [ A B C D
         E F G H
         I J K L
         M N O P
         Q R S T ]; 
%1. Tentukan batas maksimal untuk ketiga kriteria diatas
%Diasumsikan dalam kasus ini:
%jam kerja maksimal adalah 200 jam
%jumlah barang maksimal yang dapat dihasilkan adalah 100 buah
%jumlah barang berkualitas adalah 100 buah
%Sehingga, bilamana terdapat karyawan yang bekerja 200 jam, menghasilkan 100 buah barang, dan semuanya lolos uji, maka nilai kinerjanya adalah sempurna (1)     
maksU = 100;
maksTD = 100;
maksLP = 100;
maksBB = 100;

%2. Lakukan normalisasi data pada masing-masing kriteria
%dengan cara membagi masing-masing data dengan nilai maksimal pada masing-masing kriteria
%Normalisasi perlu dilakukan agar tidak ada kriteria yang lebih mendominasi kriteria lain karena angka yang terlalu tinggi
data(:,1) = data(:,1) / maksU;
data(:,2) = data(:,2) / maksTD;
data(:,3) = data(:,3) / maksLP;
data(:,4) = data(:,4) / maksBB;

relasiAntarKriteria = [ 1 0.5 3 0.5
                        0 1 0.5 2
                        0 0 1 0.25
                        0 0 0 1 ];
 
%5. Tentukan TFN, yaitu Triangular Fuzzy Number
%TFN adalah sekumpulan 3 angka yang membentuk grafik fuzzy pada nilai fuzzy 0, kemudian naik ke 1, dan kembali ke 0
%TFN berisi 2 kelompok data, 
%kelompok pertama adalah TFN dalam nilai sebenarnya
%kelompok kedua adalah invers dari TFN, yaitu dengan mengubah x menjadi 1/x dan membalik urutan angka TFN
TFN = {[-100/3 0     100/3] 	[3/100  0     -3/100]
       [0      100/3 200/3] 	[3/200  3/100 0     ]
       [100/3  200/3 300/3] 	[3/300  3/200 3/100 ]
       [200/3  300/3 400/3] 	[3/400  3/300 3/200 ]
       [300/3  400/3 500/3] 	[3/500  3/400 3/300 ]
       };
   
   RasioKonsistensi = HitungKonsistensiAHP(relasiAntarKriteria);
                    
   %7. Jika rasio konsistensi kurang dari 0.10, maka lakukan perhitungan berikutnya
if RasioKonsistensi < 0.10
    %8. Lakukan perhitungan bobot menggunakan metode Fuzzy AHP
    %Penjelasan tentang fungsi ini akan dijelaskan pada perhitungan dibawah ini (poin 8a - 8i)
    [bobotAntarKriteria,relasiAntarKriteria] = FuzzyAHP(relasiAntarKriteria, TFN);
    
    %9. Hitung nilai skor akhir dengan mengalikan data dengam masing-masing bobot antar kriteria
    ahp = data * bobotAntarKriteria';
    
    for i = 1:size(ahp, 1)
        %10. Tentukan rentang kesimpulan nilai yang digunakan dalam perhitungan
        %Diasumsikan dalam kasus ini:
        %< 0.6      -> Kurang
        %0.6 – 0.69	-> Cukup
        %0.7 – 0.79	-> Baik
        %>= 0.8		-> Sangat Baik
        
        if ahp(i) < 0.5
            status = 'Kurang';
        elseif ahp(i) < 0.65
            status = 'Cukup';
        elseif ahp(i) < 0.8
            status = 'Baik';
        else
            status = 'Sangat Baik';
        end
        

        if i == 1
            set(handles.demam,'string',(status));
             set(handles.DD,'string',ahp(i));

        elseif i == 2 
            set(handles.flu,'string',(status));
             set(handles.FF,'string',ahp(i));

        elseif i == 3 
             set(handles.malaria,'string',(status));
             set(handles.MM,'string',ahp(i));
            
        elseif i == 4 
              set(handles.struk,'string',(status));
             set(handles.SS,'string',ahp(i));
       
        elseif i == 5 
            set(handles.sk,'string',(status));
            set(handles.SSK,'string',ahp(i));
                       
        end
        
    end
end
                 
                    
     


function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function demam_Callback(hObject, eventdata, handles)
% hObject    handle to demam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of demam as text
%        str2double(get(hObject,'String')) returns contents of demam as a double


% --- Executes during object creation, after setting all properties.
function demam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to demam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function flu_Callback(hObject, eventdata, handles)
% hObject    handle to flu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of flu as text
%        str2double(get(hObject,'String')) returns contents of flu as a double


% --- Executes during object creation, after setting all properties.
function flu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to flu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function malaria_Callback(hObject, eventdata, handles)
% hObject    handle to malaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of malaria as text
%        str2double(get(hObject,'String')) returns contents of malaria as a double


% --- Executes during object creation, after setting all properties.
function malaria_CreateFcn(hObject, eventdata, handles)
% hObject    handle to malaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function struk_Callback(hObject, eventdata, handles)
% hObject    handle to struk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of struk as text
%        str2double(get(hObject,'String')) returns contents of struk as a double


% --- Executes during object creation, after setting all properties.
function struk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to struk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sk_Callback(hObject, eventdata, handles)
% hObject    handle to sk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sk as text
%        str2double(get(hObject,'String')) returns contents of sk as a double


% --- Executes during object creation, after setting all properties.
function sk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DD_Callback(hObject, eventdata, handles)
% hObject    handle to DD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DD as text
%        str2double(get(hObject,'String')) returns contents of DD as a double


% --- Executes during object creation, after setting all properties.
function DD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FF_Callback(hObject, eventdata, handles)
% hObject    handle to FF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FF as text
%        str2double(get(hObject,'String')) returns contents of FF as a double


% --- Executes during object creation, after setting all properties.
function FF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MM_Callback(hObject, eventdata, handles)
% hObject    handle to MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MM as text
%        str2double(get(hObject,'String')) returns contents of MM as a double


% --- Executes during object creation, after setting all properties.
function MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SS_Callback(hObject, eventdata, handles)
% hObject    handle to SS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SS as text
%        str2double(get(hObject,'String')) returns contents of SS as a double


% --- Executes during object creation, after setting all properties.
function SS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SSK_Callback(hObject, eventdata, handles)
% hObject    handle to SSK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SSK as text
%        str2double(get(hObject,'String')) returns contents of SSK as a double


% --- Executes during object creation, after setting all properties.
function SSK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SSK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Nama1_Callback(hObject, eventdata, handles)
% hObject    handle to Nama1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nama1 as text
%        str2double(get(hObject,'String')) returns contents of Nama1 as a double


% --- Executes during object creation, after setting all properties.
function Nama1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nama1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Umur1_Callback(hObject, eventdata, handles)
% hObject    handle to Umur1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Umur1 as text
%        str2double(get(hObject,'String')) returns contents of Umur1 as a double


% --- Executes during object creation, after setting all properties.
function Umur1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Umur1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Alamat1_Callback(hObject, eventdata, handles)
% hObject    handle to Alamat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Alamat1 as text
%        str2double(get(hObject,'String')) returns contents of Alamat1 as a double


% --- Executes during object creation, after setting all properties.
function Alamat1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Alamat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit59_Callback(hObject, eventdata, handles)
% hObject    handle to JKK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JKK as text
%        str2double(get(hObject,'String')) returns contents of JKK as a double


% --- Executes during object creation, after setting all properties.
function JKK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JKK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RMS_Callback(hObject, eventdata, handles)
% hObject    handle to RMS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RMS as text
%        str2double(get(hObject,'String')) returns contents of RMS as a double


% --- Executes during object creation, after setting all properties.
function RMS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RMS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PP_Callback(hObject, eventdata, handles)
% hObject    handle to PP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PP as text
%        str2double(get(hObject,'String')) returns contents of PP as a double


% --- Executes during object creation, after setting all properties.
function PP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in JK.
function JK_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in JK 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch(get(eventdata.NewValue,'Tag'))
    case 'LK'
        a=get(handles.LK,'string');
        set(handles.JKK,'string',a);
    case 'PR'
        a=get(handles.PR,'string');
        set(handles.JKK,'string',a);
end



function PPP_Callback(hObject, eventdata, handles)
% hObject    handle to PPP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PPP as text
%        str2double(get(hObject,'String')) returns contents of PPP as a double


% --- Executes during object creation, after setting all properties.
function PPP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PPP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
