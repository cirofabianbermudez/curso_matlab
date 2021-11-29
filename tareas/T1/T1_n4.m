clear; close all; clc;
x = 0:0.2:2*pi;
y = cos(x);
plot(x,y,'-sb','DisplayName', 'f(x) = cos(x)');			% Graficar, nombre y color
axis( [min(x) max(x) min(y)*1.1 max(y)*1.1] );		    % Límites de grafica
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('f(x) = cos(x)'); xlabel('x'); ylabel('f(x)');	% Titulos