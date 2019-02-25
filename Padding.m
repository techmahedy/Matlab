img=imread('2.jpg');

%i=imread('xyz.jpg'); %read the desired image
image=rgb2gray(img); %Uncomment this to Convert the image to grayscale if original one is RGB
subplot(1,2,1);
imshow(image) %Show the original image before preprocessing
%p=input('Input no. of rows/columns to pad:');  
%Ask the user to get the number of rows/columns to be padded
pad=uint8(zeros(size(image)+2*6));  %p=6
%generate an initial zero matrix with the dimension added with 2*p more.
for i=1:size(image,1)
            for j=1:size(image,2)
                pad(i+6,j+6)=image(i,j); 
%accessing the x+p & y+p location and storing  x,y location pixel into that
            end
end
subplot(1,2,2);
imshow(pad) %Show the padded zero image