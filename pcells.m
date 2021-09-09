% PCELLS plot cells.
%   PCELLS(X,Y,C) is a checkerboard plot of matrix C.
%   The values of C specify the color of each cell of the checkerboard
%   plot. X and Y are coordinates for the cells 
%   (created by for example MESHGRID). The first and last color in the
%   color table is given by the largest and smallest element in C. 
%   The color of the remaining cells are determined by table-lookup within
%   the color table.
%
%   Fredrik Domhagen 2021-09-08
%

function pcells(X,Y,C)

x=[];
y=[];
u=[];

[M,N]=size(X);

for i=1:M-1
    for j=1:N-1
        x = [x; X(i,j+1) X(i,j) X(i+1,j) X(i+1,j+1)];
        y = [y; Y(i,j+1) Y(i,j) Y(i+1,j) Y(i+1,j+1)];
        u = [u C(i,j)];
    end
end

patch(x',y',u)

end

