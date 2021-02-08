clc 
clear all
close all
warning off
g = alexnet;
layers = g.Layers;
layers(23) = fullyConnectedLayer(13); % number of output
layers(25) = classificationLayer;
allImages=imageDatastore('data','IncludeSubfolders',true, 'LabelSource','foldernames');
opts=trainingOptions('sgdm','InitialLearnRate',0.001,'MaxEpochs',20,'MiniBatchSize',64);
HGR_NET=trainNetwork(allImages,layers,opts);

save HGR_NET;
