clear; close all; clc

t = linspace(0,2*pi*2, 512);
y = sin(t);
yp1 = square(y);
yp2 = (1 - y.*y);
% yp3 = sawtooth(t*2,0.5)*0.5 + 0.5;
yp3 = triangular(yp1);

plot(t,y,t,yp1,t,yp2,t,yp3); grid on; grid minor


function R = square(x)
    R = zeros(size(x));
    for i = 1:numel(x)
        if ( x(i) >= 0 )
            R(i) = 1;
        else
            R(i) = -1;
        end
    end
end



function R = triangular(x)
    R = zeros(size(x));
    for i = 2:numel(x)
        R(i) = x(i)*0.0156 + R(i-1);
    end
end