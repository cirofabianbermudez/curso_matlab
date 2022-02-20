function f = polymulti(varargin)
%   Multiplies n polynomials using conv() function
%
%   INPUT: n polynomials.
%   OUTPUT: the product of all polynomials.
%   EXAMPLE: 
%        result = polymulti([1 1],[1 2])
%            result =
%
%               1     3     2
%

%   disp("Total number of input arguments: " + nargin);
       
    statement = 1;
    for k = 1:nargin
        probe = isnumeric(varargin{k}) & isvector(varargin{k});
         if probe == 0
             err = varargin{k};
             statement = 0;
             break;
         end
        statement = statement & probe;
    end
    
    if statement
        f = 1;
        for k = 1:nargin
            f = conv(f,varargin{k});
        end
    else
        msg = 'Error occurred. \nArguments must be all vectors not a %s.';
        error(msg,class(err));
    end
end