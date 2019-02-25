getim=imread('2.jpg');
inim=rgb2gray(getim);
subplot(2,1,1),imshow(inim),title('Input image');
exim=wextend(2,'zpd',inim,1);
mask=[-1 -1 -1; -1 8 -1;-1 -1 -1];
[r,c]=size(exim);
for i=1:1:r-2,
   for j=1:1:c-2,
      N1=exim(i:i+2,j:j+2);
      ele_multi=mask.*double(N1);
      col_sum=sum(ele_multi);
      row_sum=col_sum(1,1)+col_sum(1,2)+col_sum(1,3);
      ave=row_sum/9;
      outim(i,j)=ave;
   end
end
hpassim=uint8(outim);
subplot(2,1,2),imshow(hpassim),title('High pass filtered image');          