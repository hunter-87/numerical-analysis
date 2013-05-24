function [ omega ] = get_quadrature_interpolation_weight( nodes )
%GET_QUADRATURE_INTERPOLATION_WEIGHT Summary of this function goes here
%   Detailed explanation goes here

    % tabulation numbers
    xtab = min(nodes):0.01:max(nodes);

    omega = zeros(1,length(nodes));

    for j = 1:length(nodes)
        ytab = get_lagrange_basis(nodes, j, xtab);
        omega(j) = trapz(ytab);
    end
    
end

