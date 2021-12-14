%% func_partes
function R = func_partes(x)
    R = zeros(size(x));
    for i = 1:numel(x)
%         fprintf("%d\n",x(i));   % Aqui estamos utilizando sintaxis de lenguaje C
                                  % %d significa decimal y \n es salto de linea
        if x(i) < -1
            R(i) = 1;
        elseif x(i) >= -1 && x(i) < 1
            R(i) = x(i)^2;
        elseif x(i) >= 1
            R(i) = -1;
        end        
    end
end