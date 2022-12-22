%%
clear; close all; clc;

%% Calcular gradientes
clear; close all; clc;
syms x y z
f(x,y) = (25/2)*(x*y-5*y^2 - 2*x + 17*y-4);
gradient(f(x, y), [x y])

%% Calcular divergencia
clear; close all; clc;
syms x y
field = [2*x-y, y^2];
vars = [x y];
divergence(field,vars)

%% Calcular rotacional
clear; close all; clc;
syms x y z
field = [x^3+y^2+z, z*exp(x), x*y*z-9*x*z];
vars = [x y z];
curl(field,vars)

%% ejercicio 4
clear; close all; clc;
syms x y z;
A = [z*x^2,-3*x*y^2,2*x*y*z^2];
B = [-y*x^2,2*z*y^2,-4*x*y*z^2];
field1 = 2*A-B;
vars = [x y z];
resa = divergence(field1,vars) %a

field2 = A+B;
f(x,y,z) = (x^2 + y^2 + z^2)^(-1/2);
temp = gradient(f(x, y, z), [x y z]);
resb = cross(temp,curl(field2,vars)) %b

field3 = A-B;
resc = f(x,y,z)*curl(field3,vars) %c
