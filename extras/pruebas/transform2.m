clear; close all; clc;
t = linspace(0,2*pi*2, 512);
y = sin(t);

word_len = 8;
signed = 1;
frac = 6;

yfix = fi(y,signed,word_len,frac);
yfix.ProductWordLength = 7;
yfix.ProductMode = "SpecifyPrecision";
yfix.ProductFractionLength = 6;

ysquare = square(yfix);
ycos = 1 - yfix.*yfix;
ytriangular = triangular(ysquare);

plot(yfix); hold on;
plot(ycos);
plot(ysquare);
plot(ytriangular);

function R = square(x)
    word_len = 8;
    signed = 1;
    frac = 6;
    R = zeros(size(x));
    R = fi(R,signed,word_len,frac);
    for i = 1:numel(x)
        if ( x(i) >= 0 )
            R(i) = 1;
        else
            R(i) = -1;
        end
    end
end

function R = triangular(x)
    word_len = 8;
    signed = 1;
    frac = 6;
    R = zeros(size(x));
    R = fi(R,signed,word_len,frac);
    const = fi(0.0156,signed,word_len,frac);
    for i = 2:numel(x)
        R(i) = x(i)*const + R(i-1);
    end
end