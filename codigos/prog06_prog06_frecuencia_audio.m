%% prog06_frecuencia_audio
clear; close all; clc;
load Cchord.mat;
% sound(y);
n = numel(y);
t = 0:n-1;
t = t/fs;
plot(t,y)
yfft = abs(fft(y));
f = 0:n-1;
f = f*(fs/(n-1));
plot(f,yfft);
grid on; grid minor;
title('FFT'); xlabel('Hz'); ylabel('Amplitud');	
xlim([0 1000])