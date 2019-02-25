a= imread('2.jpg');
b= rgb2gray(a);

subplot(1,2,1);
imshow(b);
title('Input image');
C=double(b);
for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        %mask for x-direction:
        Gx=((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
        %mask for y-direction:
        Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
        %The gradient of the image

%b(i,j)=abs(Gx)+abs(Gy);
b(i,j)=sqrt(Gx.^2+Gy.^2);
    end
end
subplot(1,2,2);
imshow(b);
title('Edge ditection image');
