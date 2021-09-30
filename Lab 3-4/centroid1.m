function  [sumx,sumy] = centroid1(I_gray)

level=graythresh(I_gray);  %%求二值化的阈值
[height,width]=size(I_gray);
bw=im2bw(I_gray,level);    %%二值化图像
figure(1),imshow(bw);      %%显示二值化图像
[L,num]=bwlabel(bw,8);     %%标注二进制图像中已连接的部分
plot_x=zeros(1,1);         %%用于记录质心位置的坐标
plot_y=zeros(1,1);

%%求质心
sum_x=0;sum_y=0;area=0;
[height,width]=size(bw);
for i=1:height
    for j=1:width
        if L(i,j)==1
            sum_x=sum_x+i;
            sum_y=sum_y+j;
            area=area+1;
        end
    end
end
%%质心坐标
sumx=fix(sum_x/area);
sumy=fix(sum_y/area);
end

