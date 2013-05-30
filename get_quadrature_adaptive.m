function [ integral ] = get_quadrature_adaptive( a, b, n, tol, f )
%GET_QUADRATURE_ADAPTIVE Summary of this function goes here
%   Detailed explanation goes here

    nodes = gen_uniform_nodes(a, b, n);
    f_values = feval(f, nodes);
    errorTrap  = get_error_trapezoid(nodes, f_values);
    
    if (errorTrap < tol)
       integral = get_quadrature_trapezoid(nodes, f_values);
    else
       integral =  get_quadrature_adaptive(a, (b+a)/2, n, tol, f) + ...
           get_quadrature_adaptive((b+a)/2, b, n, tol, f);
    end
    
end

