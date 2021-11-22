%% prog01_grafica_sencilla
clear; close all; clc;									% Limpiar
x = 0:0.1:2*pi; 										% x = linspace(0,2*pi,100);
y = sin(x);
plot(x,y,'-sb','DisplayName', 'f(x) = sin(x)');			% Graficar, nombre y color
axis( [min(x) max(x) min(y) max(y)] );					% Límites de grafica
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('f(x) = sin(x)'); xlabel('x'); ylabel('f(x)');	% Titulos