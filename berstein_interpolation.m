function [ pol ] = berstein_interpolation( nodes, xtab, f_values )
%BERSTEIN_INTERPOLATION Summary of this function goes here
%   Detailed explanation goes here

    phi = berstein(nodes, xtab);
    
    disp('phi')
    size(phi)
    size(f_values)
    
    %pol = phi'*f_values';
    pol = f_values*phi;

end

