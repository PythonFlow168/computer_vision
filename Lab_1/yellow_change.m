% Color the duck yellow!
figure
im= imread('duckMallardDrake.jpg');
subplot(121)
imshow(im)
title('white duck')
[nr,nc,np]= size(im);
newIm= zeros(nr,nc,np);
newIm= uint8(newIm);
for r= 1:nr
 for c= 1:nc
 if ( im(r,c,1)>180 && im(r,c,2)>180 && im(r,c,3)>180 )
 % white feather of the duck; now change it to yellow
 newIm(r,c,1)= 225;
 newIm(r,c,2)= 225;
 newIm(r,c,3)= 0;
 else % the rest of the picture; no change
 for p= 1:np
 newIm(r,c,p)= im(r,c,p);
 end
 end
 end
end
subplot(122)
imshow(newIm)
title('yellow duck')