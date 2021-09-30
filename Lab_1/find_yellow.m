im = imread('Two_colour.jpg'); %读取图像
subplot(121)
imshow(im)
title('The original colour')
%分别提取RGB通道
red_channel = im(:,:,1);
green_channel = im(:,:,2);
blue_channel = im(:,:,3);
%黄色的标签像素百分比
yellow_map = green_channel> 150&red_channel> 150&blue_channel <50;
%提取像素索引
[i_yellow, j_yellow] = find(yellow_map > 0);
% visualise the results
subplot(122)
imshow(im)
title('The changed colour')% plot the image
hold on;
scatter(j_yellow, i_yellow, 5, 'filled') % highlighted the yellow pixels