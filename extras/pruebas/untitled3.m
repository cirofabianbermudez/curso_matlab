clear; close all; clc;
t = -8:8;
[X,Y] = meshgrid(t,t);
U = Y.^(3) - 9*Y;
V = X.^(3) -9*X;
h = sqrt(U.^(2) + V.^(2));
quiver(X,Y,U./h,V./h,0.5)
% quiver(X,Y,U,V,1)
axis equal; grid on ; grid minor;