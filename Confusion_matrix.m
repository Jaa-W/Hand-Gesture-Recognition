% clc;
% close all;
% clear all
% warning off
load HGR_NET;
data_test=imageDatastore('data_test','IncludeSubfolders',true, 'LabelSource','foldernames');

Y_test = data_test.Labels();
YPredicted = classify(HGR_NET,data_test);
plotconfusion(Y_test,YPredicted)