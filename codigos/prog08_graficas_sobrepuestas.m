%% prog08_graficas_sobrepuestas
clear; close all; clc;

t = linspace(0,3,100);

for i = 0:3
    y = t.^2 + i;	% Transformacion rigida, desplazamiento vertical
    nombre = "$f(t) = t^{2} + $ "+ i;
    plot(t,y,'DisplayName',nombre); hold on;
end
grid on; grid minor;
title('$f(t) = t^{2} + i$','interpreter','latex');
ylabel('$f(t)$','interpreter','latex');
xlabel('$t$','interpreter','latex');
legend('interpreter','latex','FontSize',10,'Location','southeast');
set(gca,'TickLabelInterpreter','latex');
axis square;