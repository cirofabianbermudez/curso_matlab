%% prog02_graficas_sobrepuestas
clear; close all; clc;									% Limpiar
x = 0:0.1:2*pi; 										% x = linspace(0,2*pi,100);
y1 = sin(x); y2 = cos(x);
plot(x,y1,'-b','DisplayName', 'f1(x) = sin(x)','LineWidth',1.3);		
hold on;
plot(x,y2,'--k','DisplayName', 'f2(x) = cos(x)','LineWidth',1.2);		
axis( [min(x) max(x) min(y1) max(y1)] );			    % Definir ejes
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('Funciones'); xlabel('x'); ylabel('f(x)');	    % Titulos