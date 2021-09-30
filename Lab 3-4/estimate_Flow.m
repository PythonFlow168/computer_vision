clc
clear all
close all

videoReader = VideoReader('car-tracking.mp4');
frameRGB = readFrame(videoReader);
frameGrey = rgb2gray(frameRGB);
opticFlow = opticalFlowLK('NoiseThreshold',0.009);
flow = estimateFlow(opticFlow,frameGrey);



vidReader = VideoReader('car-tracking.mp4','CurrentTime',11);


vidReader = VideoReader('visiontraffic.avi','CurrentTime',11);

opticFlow = opticalFlowHS

h = figure;
movegui(h);
hViewPanel = uipanel(h,'Position',[0 0 1 1],'Title','Plot of Optical Flow Vectors');
hPlot = axes(hViewPanel);

while hasFrame(vidReader)
    frameRGB = readFrame(vidReader);
    frameGray = rgb2gray(frameRGB);  
    flow = estimateFlow(opticFlow,frameGray);
    imshow(frameRGB)
    hold on
    plot(flow,'DecimationFactor',[5 5],'ScaleFactor',60,'Parent',hPlot);
    hold off
    pause(10^-3)
end