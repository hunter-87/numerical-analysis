function [ pol ] = bernstein_interpolation( nodes, xtab, f_values )
%BERSTEIN_INTERPOLATION Summary of this function goes here
%   Detailed explanation goes here

    phi = get_bernstein_basis(nodes, xtab);
     
    %pol = phi'*f_values';
    pol = f_values*phi;

end

