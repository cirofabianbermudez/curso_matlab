%% prog03_graficas_avanzadas
clear; close all; clc;									
x = 0:0.1:2*pi; 										
y = sin(x);
plot(x,y,'-sr','DisplayName', '$f(x) = \sin(x)$');	    
axis( [min(x) max(x) min(y) max(y)] );					
grid on; grid minor;								
legend('Location','northeast','Interpreter','latex','FontSize', 15);
title('$f(x) = \sin(x)$','Interpreter','latex'); 
xlabel('$x$','Interpreter','latex'); 
ylabel('$f(x)$','Interpreter','latex');
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

