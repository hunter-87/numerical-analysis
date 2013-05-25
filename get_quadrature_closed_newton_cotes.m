function [ newton_coates, gdp ] = get_quadrature_closed_newton_cotes( nodes, f_nodes )
%GET_QUADRATURE_CLOSED_NEWTON Summary of this function goes here
%   Detailed explanation goes here
    

    % NB WE HAVE N+1 NODES!
    n = length(nodes);    
   
    if((n < 2) || (n > 5))
        error('number or nodes should be between 2 and 5 !');
    end
    
    if ( mod(n,2) == 0)
        gdp = n - 1;
    else
        gdp = n;
    end
    
   
    h = (nodes(end) - nodes(1))/(n-1);
    
    switch n
        case 2
            newton_coates = ( f_nodes(2) + f_nodes(1) ) * h/2;
        case 3
            newton_coates = (h/3) * (f_nodes(1) + 4*f_nodes(2)+ f_nodes(3));
        case 4 
            newton_coates = ((3*h)/8) * (f_nodes(1) + 3*f_nodes(2)+ 3*f_nodes(3) + f_nodes(4));
        case 5
            newton_coates = ((2*h)/45) * (7*f_nodes(1) + 32*f_nodes(2)+ 12*f_nodes(3) + 32*f_nodes(4) + 7*f_nodes(5));
        otherwise
            disp('non implementato');
    end
    

end

