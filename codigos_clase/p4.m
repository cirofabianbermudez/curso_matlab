%%
clear; close all; clc;

x = 50:1:100;
temp = x(1);            % Extraer 1er elemento
temp2 = x(end);         % Extraer ultimo elemento
temp3 = x(end-1);       % Extraer penultimo elemento

x(end) = 200;           % Modificar elementos

temp4 = x(1:10);        % Extrar los primeros 10 elementos 
temp5 = x(1:2:10); 


y = [1 2 3; 4 5 6; 7 8 9];
temp6 = y(1,1);         % renglones, columnas
temp7 = y(6);
temp8 = y(1,1:2);
temp9 = y(1,:);         %y(1,1:3)  y(1,1:end)
temp10 = y(:,1);
temp11 = y(:,2);
temp12 = y(2:3,2:3);
temp13 = y(:,1:2:3);


