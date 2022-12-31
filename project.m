function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 20-Dec-2022 23:27:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function pointOperation_Callback(hObject, eventdata, handles)
% hObject    handle to pointOperation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Addition_Callback(hObject, eventdata, handles)
% hObject    handle to Addition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
x2=imread('hello.jpg');
x1=imresize(x1,[300 300]);
x2=imresize(x2,[300 300]);
ya=imadd(x1,x2);
subplot(1,3,1),imshow(x1),title('Image 1');
subplot(1,3,2),imshow(x2),title('Image 2');

subplot(1,3,3),imshow(ya),title('Addition Operation');


% --------------------------------------------------------------------
function Subtraction_Callback(hObject, eventdata, handles)
% hObject    handle to Subtraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
x2=imread('hello.jpg');
x1=imresize(x1,[300 300]);
x2=imresize(x2,[300 300]);
ya=imsubtract(x1,x2);
subplot(1,3,1),imshow(x1),title('Image 1');
subplot(1,3,2),imshow(x2),title('Image 2');
subplot(1,3,3),imshow(ya),title('Subtraction Operation');

% --------------------------------------------------------------------
function Division_Callback(hObject, eventdata, handles)
% hObject    handle to Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = imread('image1.jpeg');
x2=imread('image2.jpeg');
x1=imresize(x1,[300 300]);
x2=imresize(x2,[300 300]);
ya=imdivide(x2,x1);
subplot(1,3,1),imshow(x1),title('Image 1');
subplot(1,3,2),imshow(x2),title('Image 2');
subplot(1,3,3),imshow(ya),title('Division Operation');
% --------------------------------------------------------------------
function Complement_Callback(hObject, eventdata, handles)
% hObject    handle to Complement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x = imread('mika.jpg');
ya=imcomplement(x);
subplot(1,2,1),imshow(x),title('Original');

subplot(1,2,2),imshow(ya),title('Complement Operation');
% --------------------------------------------------------------------
function Average_Callback(hObject, eventdata, handles)
% hObject    handle to Average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = imread('mika.jpg');
%X1=rgb2gray(x1);
x2=imread('hello.jpg');
%X2=rgb2gray(x2);
X1=imresize(x1,[300 300]);
X2=imresize(x2,[300 300]);

v=imadd(X1,X2);
ya=imdivide(v,2);

subplot(1,3,1),imshow(X1),title('Image 1');
subplot(1,3,2),imshow(X2),title('Image 2');
subplot(1,3,3),imshow(ya),title('Average Operation');

% --------------------------------------------------------------------
function Min_Callback(hObject, eventdata, handles)
% hObject    handle to Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=imread('mika.tif');
X1=rgb2gray(X);
Y=nlfilter(X1,[3 3], 'min(x(:))');     
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(Y),title('Minimum Filter');

% --------------------------------------------------------------------
function colorImageOperation_Callback(hObject, eventdata, handles)
% hObject    handle to colorImageOperation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function changingLightingColor_Callback(hObject, eventdata, handles)
% hObject    handle to changingLightingColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function swappingChanels_Callback(hObject, eventdata, handles)
% hObject    handle to swappingChanels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function eliminatingChannels_Callback(hObject, eventdata, handles)
% hObject    handle to eliminatingChannels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function R_Callback(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
GB=x1;
RB=x1;
RG=x1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(1,2,1),imshow(x1), title('Original ')

subplot(1,2,2),imshow(GB), title(' Eliminate R ')

% --------------------------------------------------------------------
function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
GB=x1;
RB=x1;
RG=x1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(1,2,1),imshow(x1), title('Original ')

subplot(1,2,2),imshow(RB), title(' Eliminate G ')

% --------------------------------------------------------------------
% eventdata  reserved - to be defined in a future version of MATLAB
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
GB=x1;
RB=x1;
RG=x1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(1,2,1),imshow(x1), title('Original ')

subplot(1,2,2),imshow(RG), title(' Eliminate B ')

% --------------------------------------------------------------------
function RtoG_Callback(hObject, eventdata, handles)
% hObject    handle to RtoG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = imread('mika.jpg');
R=x1(:,:,1);
G=x1(:,:,2);
B=x1(:,:,3);

temp=R;
R=G;
G=temp;

im(:,:,1)=R;
im(:,:,2)=G;
im(:,:,3)=B;
subplot(1,2,1),imshow(x1),title('original')
subplot(1,2,2),imshow(im), title('from RGB to GRB')

% --------------------------------------------------------------------
function RtoB_Callback(hObject, eventdata, handles)
% hObject    handle to RtoB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
R=x1(:,:,1);
G=x1(:,:,2);
B=x1(:,:,3);

temp=R;
R=B;
B=temp;

im(:,:,1)=R;
im(:,:,2)=G;
im(:,:,3)=B;
subplot(1,2,1),imshow(x1),title('original')
subplot(1,2,2),imshow(im), title('from RGB to BGR')

% --------------------------------------------------------------------
function GtoB_Callback(hObject, eventdata, handles)
% hObject    handle to GtoB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
R=x1(:,:,1);
G=x1(:,:,2);
B=x1(:,:,3);

temp=G;
G=B;
B=temp;

im(:,:,1)=R;
im(:,:,2)=G;
im(:,:,3)=B;
subplot(1,2,1),imshow(x1),title('original')
subplot(1,2,2),imshow(im), title(' from RGB to RBG')

% --------------------------------------------------------------------
function imageHistogram_Callback(hObject, eventdata, handles)
% hObject    handle to imageHistogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function histogramStretching_Callback(hObject, eventdata, handles)
% hObject    handle to histogramStretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function histogramEqualization_Callback(hObject, eventdata, handles)
% hObject    handle to histogramEqualization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gi_Callback(hObject, eventdata, handles)
% hObject    handle to gi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
x2= imread('hello.jpg');
X1=rgb2gray(x1);
X2=rgb2gray(x2);

equa=imhistmatch(X1,X2);
subplot(1,2,1),imshow(X1),title('Original');
subplot(1,2,2),imshow(equa),title('Matched Grey Image');

% --------------------------------------------------------------------

%function Untitled_16RGBImage_Callback(hObject, eventdata, handles)
% hObject    handle to RGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
%function Untitled_13_Callback(hObject, eventdata, handles)
% hObject    handle to RGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function histogramMatching_Callback(hObject, eventdata, handles)
% hObject    handle to histogramMatching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Multiplication_Callback(hObject, eventdata, handles)
% hObject    handle to Multiplication (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('image1.jpeg');
x2=imread('image2.jpeg');
x1=imresize(x1,[300 300]);
x2=imresize(x2,[300 300]);
ya=immultiply(x1,x2);
subplot(1,3,1),imshow(x1),title('Image 1');
subplot(1,3,2),imshow(x2),title('Image 2');

subplot(1,3,3),imshow(ya),title('Multiplication Operation');

% --------------------------------------------------------------------
function RGB_Callback(hObject, eventdata, handles)
% hObject    handle to RGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
r=x1(:,:,1);
g=x1(:,:,2);
b=x1(:,:,3);

x2 = imread('hello.jpg');
rr=x2(:,:,1);
gg=x2(:,:,2);
bb=x2(:,:,3);

r1=imhistmatch(r,rr);
g1=imhistmatch(g,gg);
b1=imhistmatch(b,bb);

y=cat(3,r1,g1,b1);

subplot(1,2,1),imshow(x1),title('Original');
subplot(1,2,2),imshow(y),title('Matched RGB Image');
% --------------------------------------------------------------------
function NP_Callback(hObject, eventdata, handles)
% hObject    handle to NP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function imageRestoration_Callback(hObject, eventdata, handles)
% hObject    handle to imageRestoration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function IS_Callback(hObject, eventdata, handles)
% hObject    handle to IS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ED_Callback(hObject, eventdata, handles)
% hObject    handle to ED (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function sobelDetector_Callback(hObject, eventdata, handles)
% hObject    handle to sobelDetector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread('mika.jpg');
image=rgb2gray(image);
edge_s=edge(image,'sobel');
subplot(1,2,1),imshow(image),title('Original');

subplot(1,2,2),imshow(edge_s),title('Sobel Operator');


% --------------------------------------------------------------------
function prewittDetector_Callback(hObject, eventdata, handles)
% hObject    handle to prewittDetector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread('mika.jpg');
image=rgb2gray(image);
edge_s=edge(image,'prewitt');
subplot(1,2,1),imshow(image),title('Original');

subplot(1,2,2),imshow(edge_s),title('Prewitt Operator');

% --------------------------------------------------------------------
function robertsDetector_Callback(hObject, eventdata, handles)
% hObject    handle to robertsDetector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

image=imread('mika.jpg');
image=rgb2gray(image);
edge_s=edge(image,'roberts');
subplot(1,2,1),imshow(image),title('Original');

subplot(1,2,2),imshow(edge_s),title('Robert Operator');
% --------------------------------------------------------------------
function TH_Callback(hObject, eventdata, handles)
% hObject    handle to TH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function saltAndPepperNoise_Callback(hObject, eventdata, handles)
% hObject    handle to saltAndPepperNoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function GN_Callback(hObject, eventdata, handles)
% hObject    handle to GN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function linearFilter_Callback(hObject, eventdata, handles)
% hObject    handle to linearFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function NLF_Callback(hObject, eventdata, handles)
% hObject    handle to NLF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Maximum_Callback(hObject, eventdata, handles)
% hObject    handle to Maximum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=imread('mika.tif');
X1=rgb2gray(X);
Y=nlfilter(X1,[3 3], 'max(x(:))');     
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(Y),title('Maximum Filter');


% --------------------------------------------------------------------
function Untitled_28_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=imread('mika.tif');
X1=rgb2gray(X);
Y=ordfilt2(X1,5,ones(3 ,3));
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(Y),title('Rank Order Filter');


% --------------------------------------------------------------------
function Median_Callback(hObject, eventdata, handles)
% hObject    handle to Median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=imread('mika.tif');
X1=rgb2gray(X);
Y=medfilt2(X1);
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(Y),title('Median Filter');

% --------------------------------------------------------------------
function Mode_Callback(hObject, eventdata, handles)
% hObject    handle to Mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=imread('mika.tif');
X1=rgb2gray(X);
Y=colfilt(X1, [5 5], 'sliding', @mode) ;
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(Y),title('Mode Filter');

% --------------------------------------------------------------------
function Range_Callback(hObject, eventdata, handles)
% hObject    handle to Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=imread('mika.tif');
X1=rgb2gray(X);
Y=colfilt(X1, [5 5], 'sliding', @range) ;
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(Y),title('Range Filter');

% --------------------------------------------------------------------
function AF_Callback(hObject, eventdata, handles)
% hObject    handle to AF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=imread('mika.tif');
subplot(1,2,1);
imshow(rgb)
title('origonal image');
h=fspecial('average',[3,3]);
r=imfilter(rgb(:,:,1),h);
g=imfilter(rgb(:,:,2),h);
b=imfilter(rgb(:,:,3),h);
blur=cat(3,r,g,b);
subplot(1,2,2);
imshow(blur)
title('after filter');

% --------------------------------------------------------------------
function LF_Callback(hObject, eventdata, handles)
% hObject    handle to LF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=imread('mika.tif');
c1=rgb2gray(c);
%create  filter
f1=fspecial('laplacian');     
cf1=filter2(f1,c1); 
subplot(1,2,1)
imshow(c1)
subplot(1,2,2)
imshow(cf1/255)


% --------------------------------------------------------------------
%function Untitled_39_Callback(hObject, eventdata, handles)
% hObject    handle to imgAv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function af_Callback(hObject, eventdata, handles)
% hObject    handle to af (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=imread('mika.tif');
X=rgb2gray(x);
y= imnoise(X,'salt & pepper',.05);
h=fspecial('average',[7 7]);
B2=imfilter(y,h);
subplot(1,3,1),imshow(X),title('Original');

subplot(1,3,2),imshow(y),title('Salt Noise');

subplot(1,3,3),imshow(B2),title('Average Filter');

% --------------------------------------------------------------------
function medianFilter_Callback(hObject, eventdata, handles)
% hObject    handle to medianFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x=imread('mika.tif');
X=rgb2gray(x);
y= imnoise(X,'salt & pepper',.05);
B2=medfilt2(y,[3 3]);
subplot(1,3,1),imshow(X),title('Original');

subplot(1,3,2),imshow(y),title('Salt Noise');

subplot(1,3,3),imshow(B2),title('Median Filter');
% --------------------------------------------------------------------
function rankOrderFilter_Callback(hObject, eventdata, handles)
% hObject    handle to rankOrderFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x=imread('mika.tif');
X=rgb2gray(x);
y= imnoise(X,'salt & pepper',.05);
B2=ordfilt2(y,5,ones(3,3));
subplot(1,3,1),imshow(X),title('Original');

subplot(1,3,2),imshow(y),title('Salt Noise');

subplot(1,3,3),imshow(B2),title('Median Filter');
% --------------------------------------------------------------------
function anOutlierMethod_Callback(hObject, eventdata, handles)
% hObject    handle to anOutlierMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=imread('mika.tif');
X=rgb2gray(x);
y= imnoise(X,'salt & pepper',.05);
f=[1/8 1/8 1/8;
   1/8  0  1/8;
   1/8 1/8 1/8];
im = im2double(y);
imf = filter2(f,im);
[r,c]=size(X);
diff=abs(im-imf);
clean=zeros(r,c);
for i=1:r
    for j=1:c
        if diff(i,j)>.4
            clean(i,j)=imf(i,j);
        else 
            clean(i,j)=im(i,j);
        end
    end
end

subplot(1,3,1),imshow(X),title('Original');

subplot(1,3,2),imshow(y),title('Salt Noise');

subplot(1,3,3),imshow(clean),title('Outlier Filter');

% --------------------------------------------------------------------
function basicGlobalThresholding_Callback(hObject, eventdata, handles)
% hObject    handle to basicGlobalThresholding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image1=imread('mika.jpg');
X=rgb2gray(image1);
subplot(1,2,1),imshow(X),title('Original');
subplot(1,2,2),imshow(X>130),title('Basic Thresholding');

% --------------------------------------------------------------------
function ATH_Callback(hObject, eventdata, handles)
% hObject    handle to ATH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f=imread('mika.jpg');
F= rgb2gray(f);
Theta= mean2(F); 
done = 0;
while ~done 
g = (F >=Theta);
m1=mean(F(g));
m2=mean(F(~g));
Th_next = 0.5*( m1+ m2);   
done = abs(Theta - Th_next) < 0.5;   
Theta = Th_next;   
end 
x=im2bw(F,Theta/255);
 

subplot(1,2,1),imshow(F),title('Original');
subplot(1,2,2),imshow(x),title('Basic Thresholding');
% --------------------------------------------------------------------
function Red_Callback(hObject, eventdata, handles)
% hObject    handle to Red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
ch1=x1(:,:,1);
ch2=x1(:,:,2);
ch3=x1(:,:,3);

ch1=ch1+100; 

x2=cat(3,ch1,ch2,ch3);
subplot(1,2,1),imshow(x1),title('Original');

subplot(1,2,2),imshow(x2),title('Reddish');

% --------------------------------------------------------------------
function Minimum_Callback(hObject, eventdata, handles)
% hObject    handle to Minimum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
X1=rgb2gray(x1);
x2=imread('hello.jpg');
X2=rgb2gray(x2);
X1=imresize(X1,[300 300]);
X2=imresize(X2,[300 300]);

a=300;
b=300;
for i=1:a
    for j=1:b
        out(i,j)=min(X1(i,j), X2(i,j));
    end
end

ya=out;
subplot(1,3,1),imshow(X1),title('Image 1');
subplot(1,3,2),imshow(X2),title('Image 2');

subplot(1,3,3),imshow(ya),title('Minimum Operation');


% --------------------------------------------------------------------
function Green_Callback(hObject, eventdata, handles)
% hObject    handle to Green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
ch1=x1(:,:,1);
ch2=x1(:,:,2);
ch3=x1(:,:,3);

ch2=ch2+100; 

x2=cat(3,ch1,ch2,ch3);
subplot(1,2,1),imshow(x1),title('Original');

subplot(1,2,2),imshow(x2),title('Greenish');


% --------------------------------------------------------------------
function Blue_Callback(hObject, eventdata, handles)
% hObject    handle to Blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
ch1=x1(:,:,1);
ch2=x1(:,:,2);
ch3=x1(:,:,3);

ch3=ch3+100; 

x2=cat(3,ch1,ch2,ch3);
subplot(1,2,1),imshow(x1),title('Original');

subplot(1,2,2),imshow(x2),title('Blusish');


% --------------------------------------------------------------------
function greyImage_Callback(hObject, eventdata, handles)
% hObject    handle to greyImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
X1=rgb2gray(x1);
stretch=imadjust(X1);
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(stretch),title('Stretched Grey Image');


% --------------------------------------------------------------------
function RGBImage_Callback(hObject, eventdata, handles)
% hObject    handle to RGBImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
r=x1(:,:,1);
g=x1(:,:,2);
b=x1(:,:,3);

r1=imadjust(r,[],[],.7);
g1=imadjust(g,[],[],.7);
b1=imadjust(b,[],[],.7);

y=cat(3,r1,g1,b1);

subplot(1,2,1),imshow(x1),title('Original');
subplot(1,2,2),imshow(y),title('Stretced RGB Image');


% --------------------------------------------------------------------
function GI_Callback(hObject, eventdata, handles)
% hObject    handle to GI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = imread('mika.jpg');
X1=rgb2gray(x1);
equa=histeq(X1);
subplot(1,2,1),imshow(X1),title('Original');

subplot(1,2,2),imshow(equa),title('Equalized Grey Image');


% --------------------------------------------------------------------
function imgAv_Callback(hObject, eventdata, handles)
% hObject    handle to imgAv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x= imread('mika.tif');
X = rgb2gray(x);
[r c h]=size(X);
g=zeros(r ,c,10);
for i=1:10
    g(:,:,i)=imnoise(X,'gaussian');
end
%subplot(2,5,i),imshow(mat2gray(g(:,:,i)))
res=mat2gray(mean(g,3));

subplot(1,3,1),imshow(X),title('Original');
subplot(1,3,2),imshow(mat2gray(g(:,:,i))),title('Guassian Noise');
subplot(1,3,3),imshow(res),title('Image Averaging');
% --------------------------------------------------------------------
function RGBimage_Callback(hObject, eventdata, handles)
% hObject    handle to RGBimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread('mika.jpg');
r=x1(:,:,1);
g=x1(:,:,2);
b=x1(:,:,3);

r1=histeq(r);
g1=histeq(g);
b1=histeq(b);

y=cat(3,r1,g1,b1);

subplot(1,2,1),imshow(x1),title('Original');
subplot(1,2,2),imshow(y),title('Equalized RGB Image');


% --------------------------------------------------------------------
function averageFilter_Callback(hObject, eventdata, handles)
% hObject    handle to averageFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= imread('mika.tif');
X = rgb2gray(x);
y= imnoise(X,'gaussian');
h=fspecial('average');
B2=imfilter(y,h);
subplot(1,3,1),imshow(X),title('Original');
subplot(1,3,2),imshow(y),title('Guassian Noise');
subplot(1,3,3),imshow(B2),title('Averaging Filter');
