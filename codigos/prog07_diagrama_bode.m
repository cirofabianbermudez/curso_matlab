%% prog07_diagrama_de_bode
clear; close all; clc;
Hz = 1;
num = [200 0]; den = [1 12 20];
sys = tf(num,den);

w = logspace(-2,5,500);         % Vector de frecuencias 
[mag, fase, ~] = bode(sys,w);

if Hz == 1
    w = w / (2*pi);
    text = 'Frequency (Hz)';
else
    text = 'Frequency (rad/s)';
end

figure(1);
subplot(2,1,1);
semilogx(w,20*log10(mag(:)),'DisplayName','Normal');
grid on;
title('Diagrama de Bode','interpreter','latex');
ylabel('Magnitud (dB)','interpreter','latex');
xlabel(text,'interpreter','latex');
legend('interpreter','latex','FontSize',7);
set(gca,'TickLabelInterpreter','latex');
axis([min(w) max(w) -60 30]);

subplot(2,1,2);
semilogx(w,fase(:),'DisplayName','Normal');
grid on;
ylabel('Fase (deg)','interpreter','latex');
xlabel(text,'interpreter','latex');
legend('interpreter','latex','FontSize',7);
set(gca,'TickLabelInterpreter','latex');
axis([min(w) max(w) -100 100]);
