% Static objects segmentation by edge detection
% 9. Find edges on the image ‘lena.gif’ with the Sobel operator (edge(…, ‘sobel’, …)). Vary 
% the threshold parameter value and draw conclusions about its influence over the quality 
% of the segmented image. Visualise the results with the optimal threshold value;
% 10.Repeat the step 9 with the Canny operator (edge(…, ‘canny’, …));
% 11.Repeat the step 9 with the Prewitt operator (edge(…, ‘prewitt’, …));

clc
clear all
close all

figure
a=imread('lena.gif');
for i=1:10
b = edge(a,'sobel',i/100);   %%Sobel method is used to detect edges
subplot(2,5,i)
imshow(b)
title(i/100)
end 
suptitle('Sobel')%This function needs to be installed from adds-on.

figure
for i=1:10
d = edge(a,'canny',i/100);   %%Canny method is used to detect edges
subplot(2,5,i)
imshow(d)
title(i/100)
end 
suptitle('Canny')

figure
for i=1:10
d = edge(a,'prewitt',i/100);   %%Prewitt method is used to detect edges
subplot(2,5,i)
imshow(d)
title(i/100)
end 
suptitle('Prewitt')