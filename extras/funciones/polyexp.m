function f = polyexp(poly,n)
%   Elevate n times polynomials using conv() function as core
%
%   INPUT: polynomial,n
%   OUTPUT: the polynom elevated n times
%   EXAMPLE: 
%        result = polyexp([1 2],2)
%            result =
%
%               1     4     4
%

    probe1 = isnumeric(poly) & isvector(poly);
    probe2 = isnumeric(n) & isscalar(n);
    
    if probe1 && probe2
        f = 1;
        for k = 1:n
            f = conv(f,poly);
        end
    else
        if probe1 == 0 && probe2 == 0
            msg = 'Error occurred. \nFirst argument must be a vector not a %s.\nSecond argument must be a scalar not a %s.';
            error(msg,class(poly),class(n));
        elseif probe1 == 1 && probe2 == 0
            msg = 'Error occurred. \nSecond argument must be scalar not a %s.';
            error(msg,class(n));
        else
            msg = 'Error occurred. \nFirst argument must be a vector not a %s.';
            error(msg,class(poly));
        end
        
    end
end
