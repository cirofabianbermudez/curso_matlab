# Ecuaciones diferenciales

Autor: Ciro Fabian Bermudez Marquez



## 1. Introducción

En este archivo se encontraran explicaciones de códigos muy utilizados en ecuaciones diferenciales.

### Prog1. Resolver ODE sin condiciones iniciales

```matlab
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

```





### Prog2. Resolver ODE con condiciones iniciales

```matlab
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
```



