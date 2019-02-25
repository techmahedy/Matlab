A=imread( '1.jpg' );
subplot(1,2,1);
imshow(A);
A=im2bw(A);

B=[1 1 1 1 1 1 1;];
C=padarray(A,[0 3]);
D=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-6
        D(i,j)=sum(B&C(i,j:j+6));
    end
end
subplot(1,2,2);
imshow(D);