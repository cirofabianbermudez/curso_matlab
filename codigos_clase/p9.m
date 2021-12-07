%% Funcion por partes
clear; close all; clc;
x = -3:0.01:3;
y  = func_partes2(x);  %func_partes
plot(x,y); 
grid on; grid minor;
% axis([-3 3 -3 3]);
xlim([-3 3]); ylim([-3 3]);
