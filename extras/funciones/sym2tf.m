% Converir funcion simbolica a TF
function R = sym2tf(G)
    [symNum,symDen] = numden(G); 	% Obtener numerados y denominador
    TFnum = sym2poly(symNum);    	% Convertir Symbolic num to polynomial
    TFden = sym2poly(symDen);    	% Convertit Symbolic den to polynomial
    R = tf(TFnum,TFden);			% Generar funcion de transferencia
end
