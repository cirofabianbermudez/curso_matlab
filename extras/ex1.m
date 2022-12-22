%% Ejercicio 1
clear; close all; clc;

A = [2 1 1].';
B = [-1 -2 4].';

resa = cross(2*A,B) - 3*B
resb = A/B
resc = acosd(dot(A,B)/( norm(A)*norm(B) ) )
temp = cross(A,B);
resd = temp./norm(temp)


