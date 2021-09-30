clc
clear all
close all
vidReader = VideoReader('red_square_video.mp4');

opticFlow = opticalFlowHS

i=0
 figure
while hasFrame(vidReader)
    frameRGB = readFrame(vidReader);

    frameGray = rgb2gray(frameRGB);  
    i=i+1
k(i,:) = centroid2(frameRGB)
        C = corner( frameGray );

    flow = estimateFlow(opticFlow,frameGray);
    imshow(frameRGB)
    hold on
    plot(C(:,1),C(:,2),'g*','markersize',12);
    hold on


%     hold on
    plot(flow,'DecimationFactor',[3 3],'ScaleFactor',60);
    hold on
    pause(10^-2)

end
save('frameRGB.mat','frameRGB') %%保存最后一帧
imwrite(frameRGB,'frameRGB1.jpg')

save('k.mat','k')