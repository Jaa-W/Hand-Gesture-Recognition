clc
clear all
cam = videoinput('winvideo', 1); 
set(cam, 'ReturnedColorSpace', 'RGB'); 

% preview(cam)
% img = getsnapshot(vid);
% imshow(img)

x=0;
y=0;
height=400;
width=400;
bboxes=[x y height width];

%Sub folders:
%
% CALL ME
% FIGHT
% GUN
% HEART
% HELLO
% LIKE
% LITLE BIT
% OK
% PEACE
% ROCK
% STAR TREK
% UNLIKE
% background

for i = 1:25
    path = sprintf('D:\\PROJEKTY\\MATLAB\\hand recognition\\data\\UNLIKE\\%d.bmp',i);
    img = getsnapshot(cam);
    IFaces = insertObjectAnnotation(img,'rectangle',bboxes,'Processing Area');
    %imshow(IFaces);
    ex=imcrop(img,bboxes);
    ex=imresize(ex,[227 227]);
    imwrite(ex,path)
    drawnow;
end
clear c;