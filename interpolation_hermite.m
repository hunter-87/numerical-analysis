function [ pol ] = hermite_interpolation( u, v, f, g )
%HERMITE_INTERPOLATION Summary of this function goes here
%   Detailed explanation goes here
        
    pol = u'*f+v'*g;

end

