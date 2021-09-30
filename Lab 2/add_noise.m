% Images with different types of noise and image denoising 
% 5. Synthesise two images from the image ‘lena.gif’ with two types of noise – Gaussian and 
% “salt and pepper” (imnoise). Visualise the results;
% 6. Apply the Gaussian filter to the Gaussian noised image (imgaussfilt). Find the optimal 
% filter parameters values. Visualise the results;
% 7. Apply the Gaussian filter to the salt and pepper noised image (imgaussfilt). Make sure 
% that no parameters values provide good results;
% 8. Apply the median filter to the salt and pepper noised image (medfilt2). Find the optimal 
% filter parameters values. Visualise the results;

close all

figure
a=imread('lena.gif');
Add_gaussian= imnoise(a,'gaussian');    %%Add Gaussian noise
subplot(121)
imshow(Add_gaussian)
title('Add Gaussian')
Add_salt= imnoise(a,'salt & pepper');  %%Add salt and pepper noise
subplot(122)
imshow(Add_salt)
title('Salt & Pepper')

figure
for k=1:10
Add_gaussian_filter=imgaussfilt(Add_gaussian,k/10);   %%Gaussian noise filtering by Gaussian filtering method
subplot(2,5,k)
imshow(Add_gaussian_filter)
title(k/10)
end
suptitle('Gau-gaussian')

figure
for k=1:10
Add_salt_filter=imgaussfilt(Add_salt,k/10);   %%Gaussian Filtering Method for Salt and Pepper Noise Filtering
subplot(2,5,k)
imshow(Add_salt_filter)
title(k/10)
end
suptitle('Salt-filter')

figure
for k=1:10
J=imnoise(a,'salt & pepper',k/20);
Add_salt_medfilt2=medfilt2(J);  %%Mean filtering method for salt and pepper noise filtering
subplot(2,5,k)
imshow(Add_salt_medfilt2)
title(k/20)
end
suptitle('Salt-medfilter2')