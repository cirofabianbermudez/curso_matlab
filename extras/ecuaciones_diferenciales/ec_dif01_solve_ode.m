%% ec_dif01_solve_ode.m
clear; close all; clc;

% Descripción de oDE
syms y(x)
Dy = diff(y);
ode = diff(y,x,2) == cos(2*x) - y;      

% Solve ODE
ySol(x) = dsolve(ode);
fprintf("y = ");
disp( simplify(ySol(x)) );
