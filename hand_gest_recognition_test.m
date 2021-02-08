clc;
close all;
clear all
warning off
cam=videoinput('winvideo', 1); 
set(cam, 'ReturnedColorSpace', 'RGB'); 
load HGR_NET;
x=0;
y=0;
height=400;
width=400;
bboxes=[x y height width];
while true
    img=getsnapshot(cam);
    IFaces = insertObjectAnnotation(img,'rectangle',bboxes,'Processing Area');   
    ex=imcrop(img,bboxes);
    ex=imresize(ex,[227 227]);
    label=classify(HGR_NET,ex);
    imshow(IFaces);
    title(char(label));
    drawnow;
end