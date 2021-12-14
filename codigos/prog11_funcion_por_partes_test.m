%% prog11_funcion_por_partes_test
clear; close all; clc;
x = linspace(-3,3,5e3);
y = func_partes(x);
plot(x,y);
axis([min(x) max(x) -1.5 1.5]);
grid on; grid minor;