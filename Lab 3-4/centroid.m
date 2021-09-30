function [sumx,sumy] = centroid(I)
% I = imread('red_square_static.jpg');
[M,N,P] = size(I);
int8 sumx ;
int8 sumy ;
int8 count ;
 sumx = 0;
 sumy = 0;
 count = 0;
 int8 R ;
 int8 G ;
 int8 B ;
 R = 20; G = 200;B = 200;
for i = 1:1:M
    for j = 1:1:N
            if I(i,j,1)>=R &&  I(i,j,2)>=G && I(i,j,3)>=B
                 sumx = sumx + i;
                 sumy = sumy +j;
                 count = count + 1;
            end
    end
end
sumx = sumx / count;    %sumx存储了x轴坐标
sumy = sumy / count;    %sumy存储了y轴坐标
disp(sumx);disp(sumy);
