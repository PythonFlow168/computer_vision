clear all % Clears the workspace in MATLAB
I = imread('Dog.jpg'); % 
size(I) % Gives the size of the image
Ig = rgb2gray(I); % Converts a colour image into a grey level image
figure
subplot(121)
imshow(Ig)
title('Gray level image')
Ih = rgb2hsv(I); % Converts a colour image into a grey level image
subplot(122)
imshow(Ih)
title('HSV gray level image')