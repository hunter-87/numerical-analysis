function [ f ] = function_17( x )
%FUNCTION_17 Summary of this function goes here
%   Detailed explanation goes here
    
    f = zeros(1, length(x));
    
    for i = 1:length(x)
        if (x(i)>=0 & x(i)<pi/4)
            f(i) = sin(6*x(i));
        else
            f(i) = x(i).*x(i) - (pi+1)/4;
        end
    end
    
    
    

end

