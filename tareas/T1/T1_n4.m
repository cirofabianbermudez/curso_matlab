clear; close all; clc;
x = [0:0.5:5]
y = cos(x)
plot(x,y,'-sb','DisplayName', 'f(x) = cos(x)');			% Graficar, nombre y color
axis( [min(x) max(x) min(y) max(y)] );					% Límites de grafica
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('f(x) = sin(x)'); xlabel('x'); ylabel('f(x)');	% Titulos