A=[1 0 1 1 1; 1 0 1 0 0; 1 1 1 0 0;0 0 1 1 1];
%Structuring element
B=[1 1 0];
%Pad array with ones on both sides
C=padarray(A,[0 1],1);
%Intialize the matrix D of size A with zeros
D=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-2
        In=C(i,j:j+2);
        %Find the position of ones in the structuring element
        In1=find(B==1);
        %Check whether the elements in the window have the value one in the
        %same positions of the structuring element
        if(In(In1)==1)
        D(i,j)=1;
        end
    end
end
display(D);