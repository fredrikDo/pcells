
N=10;                       % Number of cells

x = linspace(0,1,N+1).^2;   % x-coordinates
y = x;                      % y-coordinates

[X,Y]=meshgrid(x,y);        % Generate meshgrid

U = magic(N);               % Random cell-values

pcells(X,Y,U)               % Plot with pcells

pcells(X,Y,U,'grid','off')  % Turn off grid