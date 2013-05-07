function [ p_inter ] = lagrange_interpolation( nodes, xtab, f_values )
%LAGRANGE-INTERPOLATION Summary of this function goes here
%   Detailed explanation goes here
    
    n = length(nodes);
    p_inter = zeros(1,length(xtab));
    for i=1:n
        
        l_base = get_lagrange_basis(nodes, i, xtab);
        p_inter = p_inter + l_base*f_values(i);
        
    end
    
    
end

