%% 
clear; close all; clc;
t = 0:0.01:10;
y1 = sin(t)*2;      % multiplicacion vector por escalar
y2 = sin(t).*t;     % multiplicacion vector a vector elemento a elemento
y3 = sin(t)/2;      % Division vector por escalar
y4 = sin(t)./t;     % Division vector a vector elemento a elemento
% plot(t,y)
%%
clear; close all; clc;

A = reshape(1:4,2,2).'
B = reshape(5:8,2,2).'
D = [5 7].'; 
C = A*B;            % Multiplicacion matricial
E = A*D
t = 1:10;

[r,~] = size(A);
[~,idx] = max(t);
t(idx);
