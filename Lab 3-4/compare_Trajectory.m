clc
clear all
close all
load('k.mat')
load('red_square_gt.mat')
load('frameRGB.mat')

imshow(frameRGB)
figure
hold on
x=k(:,1);
y=k(:,2);
plot(x,y)
legend('count')

hold on
x1=gt_track_spatial(:,1);
y1=gt_track_spatial(:,2);
plot(x1,y1)
legend('count','original')



mse_x=x-x1;
mse_y=y-y1;
mse_xy=sqrt(mse_x.^2+mse_y.^2)
mse(mse_xy)
