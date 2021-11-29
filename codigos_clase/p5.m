%% 
clear; close all; clc;
A = 1:9;
B = reshape(A,3,3).';
C = (10:12).';

D1 = [B C];  % Concatenar vector C a la derecha de matriz B
D2 = [C B];  % DEBEN SER COMPATIBLES
D3 = [B; C.'];
D4 = [C.'; B];
D5 = [B B; B B];
D6 = [B C C C];
D7 = [C.'; C.'; C.'; B];

