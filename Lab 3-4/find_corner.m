clc
clear all
close all

a=imread('red_square_static.jpg');
a_gray=rgb2gray(a);
% create output RGB frame
Y = repmat(a_gray,[1 1 3]);
imshow(Y)
corners = detectFASTFeatures(a_gray,'minContrast',15/255,'minQuality',1/255);
locs = corners.Location;
for ii = 2:2
    Y(floor(locs(ii,2)),floor(locs(ii,1)),2) = 255; % green dot

end
imshow(Y)


%%
b=imread('GingerBreadMan_second.jpg');
b_gray=rgb2gray(b);
Y = repmat(b_gray,[1 1 3]);
corners = detectFASTFeatures(b_gray,'minContrast',15/255,'minQuality',1/255);
locs = corners.Location;
for ii = 1:size(locs,1)
    Y(floor(locs(ii,2)),floor(locs(ii,1)),2) = 255; % green dot
end
imshow(Y)

