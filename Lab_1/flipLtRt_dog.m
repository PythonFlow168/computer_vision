%%翻折图像

a=imread('Dog.jpg');
b=flipLtRt(a);  %% 采用字节操作而非矩阵卷积的方式翻折图像
figure
subplot(121)
imshow(a)
subplot(122)
imshow(b)
suptitle('Folded images')