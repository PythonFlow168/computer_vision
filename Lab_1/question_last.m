% Understanding image histogram – difference between one-colour and two-colour 
% images
% An image histogram is a good tool for image understanding. For example, image histograms 
% can be used to distinguish a one-colour image (or an object in the image) from a two-colour 
% image (or an object in the image):
% 1. Read ‘One_colour.jpg’ and ‘Two_colour.jpg’ (with imread);
% 2. Convert both images into the greyscale format (with rgb2gray);
% 3. Calculate and visualise the histograms for both images (with imhist);

a=imread('One_colour.jpg');
b=imread('Two_colour.jpg');
a_gray=rgb2gray(a);   %彩色图像像灰度图像转化
b_gray=rgb2gray(b);

figure
subplot(221) 
imshow(a)    %%转化为灰度直方图
title('The original figure')
subplot(222)
imhist(a_gray)    %%转化为灰度直方图
title('Histogram of the one colour')
subplot(223) 
imshow(b)    %%转化为灰度直方图
title('The original figure')
subplot(224) 
imhist(b_gray)    %%转化为灰度直方图
title('Histogram of the two colour')