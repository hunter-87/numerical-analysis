function [ newton_coates, gdp ] = get_quadrature_trapezoid( nodes, f_nodes )
%GET_QUADRATURE_TRAPEZOID Summary of this function goes here
%   Detailed explanation goes here

    % NB WE HAVE N+1 NODES!
    n = length(nodes);    
    % number of subinterval
    m = n - 1;
    
    if ( mod(n,2) == 0)
        gdp = n - 1;
    else
        gdp = n;
    end
    
    h = (nodes(end)-nodes(1)) / (2*m);
    
    newton_coates = h * (f_nodes(1) + sum(2*f_nodes(2:end-1)) + f_nodes(end));


end

