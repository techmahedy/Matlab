im=rgb2gray(imread('C:\Users\Meta Centric\Desktop\img\nuha.jpg'));

[r,c]=size(im);
temp=im;
r1=floor(r/2);
c1=floor(c/2);

im1=im(1:r1,1:c1,1);
im2=im(1:r1,c1+1:c1*2);
im3=im(r1+1:r1*2,1:c1);
im4=im(r1+1:r1*2,c1+1:c1*2);

figure('name','Image Segmentation','numbertitle','off','Position', [0 0 1100 660]);
subplot(2,3,1),imshow(im),title('Original image')
subplot(2,3,2),imshow(im1),title('Part 1')
subplot(2,3,3),imshow(im2),title('Part 2')
subplot(2,3,5),imshow(im3),title('Part 3')
subplot(2,3,6),imshow(im4),title('Part 4')

h1=zeros(1,256);
for x=1:200
    for y=1:300
        val=im1(x,y);
        h1(val+1)=h1(val+1)+1;
    end
end

h2=zeros(1,256);
for x=1:200
    for y=1:300
        val=im2(x,y);
        h2(val+1)=h2(val+1)+1;
    end
end

h3=zeros(1,256);
for x=1:200
    for y=1:300
        val=im3(x,y);
        h3(val+1)=h3(val+1)+1;
    end
end

h4=zeros(1,256);
for x=1:200
    for y=1:300
        val=im4(x,y);
        h4(val+1)=h4(val+1)+1;
    end
end


figure('name','Histogram','numbertitle','off','Position', [0 0 1100 660]);
subplot(2,4,1),imshow(im1),title('Part1')
subplot(2,4,5),bar(h1,'r'),title('Histogram of Part1')
subplot(2,4,2),imshow(im2),title('Part2')
subplot(2,4,6),bar(h2,'r'),title('Histogram of Part2')
subplot(2,4,3),imshow(im3),title('Part3')
subplot(2,4,7),bar(h3,'r'),title('Histogram of Part3')
subplot(2,4,4),imshow(im4),title('Part4')
subplot(2,4,8),bar(h4,'r'),title('Histogram of Part4')

m=5;
for i=1:size(im1,1)   
    for j=1:size(im1,2)   
        if i>0 && i<=m
            im1(i,j)=0;
        elseif i<=size(im1,1) && i>=size(im1,1)-m
            im1(i,j)=0;
        elseif j>0 && j<=m
            im1(i,j)=0;
        elseif j<=size(im1,2) && j>=size(im1,2)-m
            im1(i,j)=0;
        end
    end
end

figure,imshow(im1),title('Padding Image One')

for i=1:size(im2,1)   
    for j=1:size(im2,2)   
        if i>0 && i<=m
            im2(i,j)=0;
        elseif i<=size(im2,1) && i>=size(im2,1)-m
            im2(i,j)=0;
        elseif j>0 && j<=m
            im2(i,j)=0;
        elseif j<=size(im2,2) && j>=size(im2,2)-m
            im2(i,j)=0;
        end
    end
end

figure,imshow(im2),title('Padding Image Two')

for i=1:size(im3,1)   
    for j=1:size(im3,2)   
        if i>0 && i<=m
            im3(i,j)=0;
        elseif i<=size(im3,1) && i>=size(im3,1)-m
            im3(i,j)=0;
        elseif j>0 && j<=m
            im3(i,j)=0;
        elseif j<=size(im3,2) && j>=size(im3,2)-m
            im3(i,j)=0;
        end
    end
end

figure,imshow(im3),title('Padding Image Three')

for i=1:size(im4,1)   
    for j=1:size(im4,2)   
        if i>0 && i<=m
            im4(i,j)=0;
        elseif i<=size(im4,1) && i>=size(im4,1)-m
            im4(i,j)=0;
        elseif j>0 && j<=m
            im4(i,j)=0;
        elseif j<=size(im4,2) && j>=size(im4,2)-m
            im4(i,j)=0;
        end
    end
end

figure,imshow(im4),title('Padding Image Four')

E = [];
for i=1:4
    
    str = rgb2gray(imread('C:\Users\Meta Centric\Desktop\img\nuha.jpg'));
    str = strcat(str);
 
    E = im;
    E = E+im;
end

figure,imshow(E),title('Final Image After Adding Four Image')


