%% prog04_graficas_multiples
clear; close all; clc;									
x = 0:0.1:2*pi; 										
y1 = sin(x); y2 = cos(x);
subplot(2,1,1);
plot(x,y1,'-sr','DisplayName', 'f(x) = sin(x)');	    
axis( [min(x) max(x) min(y1)*1.1 max(y1)*1.1] );				
grid on; grid minor;								
legend('Location','northeast','FontSize', 12);
title('f(x) = sin(x)'); xlabel('x'); ylabel('f(x)');

subplot(2,1,2);
plot(x,y2,'-sk','DisplayName', 'f(x) = cos(x)');	    
axis( [min(x) max(x) min(y2)*1.1 max(y2)*1.1] );					
grid on; grid minor;								
legend('Location','southeast','FontSize', 12);
title('f(x) = cos(x)');  xlabel('x'); ylabel('f(x)');