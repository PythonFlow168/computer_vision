% 1. Read the image ‘lena.gif’ (with imread);
% Enhancement contrast 
% 2. Compute an image histogram for the image (imhist). Visualise the results. Analysing the 
% histogram think about the best way of enhancement the image, recall the methods from 
% the lectures;
% 3. Apply the histogram equalisation to the image (histeq). Visualise the results. Compute 
% an image histogram for the corrected image. Visualise the results. Compare it with the 
% original histogram. Does this method of enhancement actually enhance image quality?
% 4. Apply the gamma correction of the histogram to the image (imadjust). Visualise the 
% results. Try different values for gamma and find the optimal one. Compute an image 
% histogram to the corrected image. Visualise the results. Compare the histogram and the 
% image with the original ones and the results of the histogram equalisation. Which method 
% of enhancement performs better?

clc
clear all
close all
f=imread('lena.gif');  

figure
imhist(f)   %%Display gray histogram
title('Gray histogram')

a=histeq(f);        %%Use histogram equalization method
figure
imshow(a)
title('histeq')
figure
imhist(a)
title('histeq')

b=imadjust(f);   %% Gamma correction of histogram is applied to the image
figure
imshow(b)
title('imadjust')
figure
imhist(b)
title('imadjust')

f = mat2gray(f);

gamma1 = 0.1;
g_0_1 = f.^gamma1; 
gamma2 = 0.2;
g_0_2 = f.^gamma2; 
gamma3 = 0.4;
g_0_4 = f.^gamma3;
gamma4 = 0.6;
g_0_6 = f.^gamma4;
gamma5 = 0.8;
g_0_8 = f.^gamma5; 
gamma6 = 1;
g_1 = f.^gamma6;  
gamma7 = 2.5;
g_2_5 = f.^gamma7; 
gamma8 = 5;
g_5 = f.^gamma8; 
  
figure
subplot(3,3,1);  
imshow(f,[0 1]);  
xlabel('a).Origin');  

subplot(3,3,2);  
imshow(g_0_1,[0 1]);  
xlabel('b).\gamma =0.1'); 

subplot(3,3,3);  
imshow(g_0_2,[0 1]);  
xlabel('c).\gamma =0.2'); 

subplot(3,3,4);  
imshow(g_0_4,[0 1]);  
xlabel('d).\gamma=0.4'); 

subplot(3,3,5);  
imshow(g_0_6,[0 1]);  
xlabel('e).\gamma=0.6'); 

subplot(3,3,6);  
imshow(g_0_8,[0 1]);  
xlabel('f).\gamma=0.8');  
  
subplot(3,3,7);  
imshow(g_1,[0 1]);  
xlabel('g).\gamma=1 = Origin');  
  
subplot(3,3,8);  
imshow(g_2_5,[0 1]);  
xlabel('h).\gamma=2.5'); 

subplot(3,3,9);  
imshow(g_5,[0 1]);  
xlabel('i).\gamma=5'); 
suptitle('Gamma correction')