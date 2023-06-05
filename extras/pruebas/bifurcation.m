clear; close all; clc;

xvals = [];

for beta = 0:0.001:4
    xold = 0.5;
    for i = 1:2000
        xnew = beta*(xold-xold^2);
        xold = xnew;
    end
    
    xss = xnew;
    for i = 1:2000
        xnew = beta*(xold-xold^2);
        xold = xnew;
        xvals(1, length(xvals)+1) = beta;
        xvals(2, length(xvals)) = xnew;
        if (abs(xnew-xss)<1e-4)
            break;
        end
    end
end
plot(xvals(1,:), xvals(2,:), '.k', 'MarkerSize',0.1);
