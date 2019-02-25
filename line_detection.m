% We choose the 'jet' palette
%colormap jet 

% We define a 90 x 90 matrix, and make it all ones.
% This means that the 'background' will be the first
%    element found in our palette
r = 90; c = r;
W = ones(r, c); 

% Define our colors in very specific areas of the matrix 
W(10 : 40, 10 : 40) = 20;
W(30 : 60, 30 : 60) = 40;
W(50 : 80, 50 : 80) = 60;
W(30 : 40, 30 : 40) = 30;
W(50 : 60, 50 : 60) = 50; 

% Display the image and 'turn off' the axes
subplot(1,2,1);
image(W); axis off
%save color_squares W
%load color_squares
[r, c] = size(W);
W2 = ones(r, c); 

for i = 2 : r-1
    for j = 2 : c-1
     cl(i, j) = (W(i-1, j) - W(i,j)) + (W(i+1, j) - W(i,j)) +... 
                (W(i, j-1) - W(i,j)) + (W(i, j+1) - W(i,j));
     if cl(i,j) > 0
        W2(i,j) = 30;
     end
    end
end
subplot(1,2,2);
image(W2); axis off 