%% prog05_leer_archivo_y_graficar
clear; close all; clc;
load electricity.mat;
res = usage(:,1);
comm = usage(:,2);
ind = usage(:,3);
yrs = 1991:2013;
plot(yrs,res,'--b','DisplayName','Residencial'); hold on;
plot(yrs,comm,':k','DisplayName','Comercial');
plot(yrs,ind,'-.m','DisplayName','Industrial');
grid on; grid minor;
legend('Location','northwest');
title('Uso de electricidad en Julio');
xlabel('Años'); ylabel('10^9 kWh / dia'); 