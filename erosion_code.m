A=imread('1.jpg');
A=im2bw(A);
%Structuring element
B=[1 1 0];
%Pad array with ones on both sides
C=padarray(A,[0 1],1);
%Intialize the matrix D of size A with zeros
D=false(size(A));
for i=1:size(C,1)
 for j=1:size(C,2)-2
        L=C(i,j:j+2);
 %Find the position of ones in the structuring element
        K=find(B==1);
       if(L(K)==1)
        D(i,j)=1;
        end
    end
end

figure,imshow(D)