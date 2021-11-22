clear; close all; clc;
load Cchord.mat;
% sound(y);
n = numel(y);
t = 0:n-1;
t = t/fs;
plot(t,y)
yfft = abs(fft(y));
f = 0:1:n-1;
f = f*fs;