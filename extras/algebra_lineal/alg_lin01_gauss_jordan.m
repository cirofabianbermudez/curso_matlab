%% alg_lin01_gauss_jordan.m 
clear; close all; clc;
format rat;

% Ax = b
A = [12 -2;3 1];
b = [20 20].';
C = [A b];
x = rref(C); % Reducción por Gauss-Jordan
fprintf('La matriz aumentada es: \n');
disp(C);
fprintf('La reducción del sistema por Gauss-Jordan es: \n');
disp(x);
fprintf('Solución: \nx = \n');
disp( x(:,end) );
