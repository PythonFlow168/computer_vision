clc
clear all
close all

a=imread('GingerBreadMan_first.jpg');
a_gray=rgb2gray(a);
% subplot(121)
% imshow(a)
b=imread('GingerBreadMan_second.jpg');
b_gray=rgb2gray(b);
% subplot(122)
% imshow(b)

opticFlow = opticalFlowLK('NoiseThreshold',0.009);

opticalFlow = opticalFlowLK
flow = estimateFlow(opticalFlow,a_gray)
flow = estimateFlow(opticalFlow,b_gray)
 plot(flow,'DecimationFactor',[5 5],'ScaleFactor',60)

