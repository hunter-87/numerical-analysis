function [ pol ] = interpolation_bspline(nodes, xtab, f_values, p  )
%INTERPOLATION_BSPLINE Summary of this function goes here
%   Detailed explanation goes here

    bspline_base_nodes = get_bspline_boore_basis(p, nodes, nodes);

    coeff = bspline_base_nodes{p+1}/f_values;
    
    bspline_base = get_bspline_boore_basis(p, nodes, xtab);

    pol = bspline_base{p+1}'*coeff;

end