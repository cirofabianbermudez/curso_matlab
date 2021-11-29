%% 
clear; close all; clc;
v = [4.0, 6.66, 1.51, 4.72, 9.06].'  % Velocidad de una bici
t = [10 15 16 20 25].'               % tiempo en que ocurre

pi > 3.5;
test1 = v < 5;       % creo un vector logico, 1 si es True 0 si es False
test2 = v( v < 5 );
test3 = t( v < 5 );
v( (v > 5) & (v < 9)) = 10;