%% prog06_frecuencia_audio
clear; close all; clc;
load Cchord.mat;
% sound(y);
n = numel(y);
t = 0:n-1;
t = t/fs;
figure(1);
plot(t,y)
grid on; grid minor;
yfft = abs(fft(y));
f = 0:n-1;
f = f*(fs/(n-1));
figure(2);
plot(f,yfft);
grid on; grid minor;
title('FFT'); xlabel('Hz'); ylabel('Amplitud');	
xlim([0 1000])