%%
clear; close all; clc;

% x = linspace(-20,20,500);  % Ctrl+r comentar
x = -20:0.01:20;
y = sinc(x);                 % Sampling
plot(x,y)
grid on; grid minor;
