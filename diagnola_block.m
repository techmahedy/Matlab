img=imread('3.jpg');
subplot(1,2,1);
imshow(img);
title('Original Image');

%s = size(img);

[x, y] = size(img);

for i = 1: x
    for j = 1: y
        if(i==j)
            img(i, j) =255;
            
        end
        if(i+j==y+1)
            img(i,j)=255;
        end
            
    end
end
           
     
subplot(1,2,2)
imshow(img)
title('Diagonal Block');