function R = func_partes2(x)
    R = zeros(size(x));
    for i = 1:numel(x)
        if x(i) < -1
            R(i) = 1;
        elseif x(i) >= -1 && x(i) < 1
            R(i) = x(i)^2;
        elseif x(i) >= 1
            R(i) = -1;
        end
    end
end