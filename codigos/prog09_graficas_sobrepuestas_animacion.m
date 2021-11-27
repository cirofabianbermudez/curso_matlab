%% prog09_graficas_sobrepuestas_animacion
clear; close all; clc;
t = linspace(0,3,100);
iter = 0:5;
y = zeros( numel(iter), numel(t) );
nombres =  strings( 1, numel(iter) );
for i = iter
    y(i+1,:) = t.^2 + i;	
    nombres(i+1) = "$f(t) = t^{2} + $ "+ i;
end
f = figure; f.Position(1:2) = [0 50]; % [right bottom]
grid on; grid minor; axis square; hold on;
axis([0 max(t) 0 20]);
title('$f(t) = t^{2} + i$','interpreter','latex');
ylabel('$f(t)$','interpreter','latex');
xlabel('$t$','interpreter','latex');
set(gca,'TickLabelInterpreter','latex');
legend('interpreter','latex','FontSize',10,'Location','northwest');
for i = iter
    pause(1);
    plot(t,y(i+1,:),'DisplayName',nombres(i+1)); 
end



