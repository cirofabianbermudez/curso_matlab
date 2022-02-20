% Converir TF a syms
function R = tf2sym(sys)
    [Num,Den] = tfdata(sys,'v');			% Generar funcion de transferencia
    syms s;
    R = poly2sym(Num,s)/poly2sym(Den,s);
end
