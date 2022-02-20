%% ec_dif02_solve_ode.m
clear; close all; clc;

% Descripción de oDE
syms y(x)
Dy = diff(y);
ode = diff(y,x,2) == cos(2*x) - y;      

% Initial conditions
cond1 = y(0) == 1;
cond2 = Dy(0) == 0;
conds = [cond1 cond2];

% Solve ODE
ySol(x) = dsolve(ode,conds);
fprintf("y = ");
disp( simplify(ySol(x)) );
