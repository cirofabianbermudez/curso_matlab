%% prog04_graficas_multiples_latex
clear; close all; clc;									
x = 0:0.1:2*pi; 										
y1 = sin(x); y2 = cos(x);
subplot(2,1,1);
plot(x,y1,'-sr','DisplayName', '$f(x) = \sin(x)$');	    
axis( [min(x) max(x) min(y1)*1.1 max(y1)*1.1] );					
grid on; grid minor;								
legend('Location','northeast','Interpreter','latex','FontSize', 12);
title('$f(x) = \sin(x)$','Interpreter','latex'); 
xlabel('$x$','Interpreter','latex'); 
ylabel('$f(x)$','Interpreter','latex');
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

subplot(2,1,2);
plot(x,y2,'-sk','DisplayName', '$f(x) = \cos(x)$');	    
axis( [min(x) max(x) min(y2)*1.1 max(y2)*1.1] );					
grid on; grid minor;								
legend('Location','southeast','Interpreter','latex','FontSize', 12);
title('$f(x) = \cos(x)$','Interpreter','latex'); 
xlabel('$x$','Interpreter','latex'); 
ylabel('$f(x)$','Interpreter','latex');
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);

