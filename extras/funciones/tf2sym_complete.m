function R = tf2sym(sys)
%   Converts a transfer function object to a symbolic fuction
%
%   INPUT: transfer function object
%   OUTPUT: symbolic function with 's' as the symbolic variable
%   EXAMPLE: 
%        sys = tf([1 2],[1 2 4])
%        R = tf2sym(sys)
%        R =
%
%            (s + 2)/(s^2 + 2*s + 4)

    probe = isa(sys,'tf');
    if ~probe
          msg = 'Error occurred. \nArgument must be a transfer function object not a %s.';
          error(msg,class(sys));
    else
        [num,den] = tfdata(sys,'v');                % Extraer numerador y denominador
        syms s;                                     % Creacion de variable simbolica
        R = poly2sym(num,s)/poly2sym(den,s);        % Convertir en ec simbolica
    end
end
