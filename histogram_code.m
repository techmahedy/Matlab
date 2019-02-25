img=imread('1.jpg');
subplot(2,1,1),imshow(img),title('Source image');

d=size(img);
n=d(1)*d(2);
pk=zeros(0,255);
for i=0:255
   s=find(img==i);
   [nk b]=size(s);
   pk(i+1)=nk/n;    
end
subplot(2,1,2),bar(0:255,9*pk,'stack'),title('Histogram.');