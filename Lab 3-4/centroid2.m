function b = centroid2(im)

% save('frameRGB.mat','frameRGB') %
 a = im;
%   a = imread('frameRGB1.jpg');
bw = a < 100;
% imshow(bw)
% title('Image with Circles')

stats = regionprops('table',bw,'Centroid',...
    'MajorAxisLength','MinorAxisLength')

centers = stats.Centroid;
b(1,1)=centers(1,1)
b(1,2)=centers(1,2)
end

