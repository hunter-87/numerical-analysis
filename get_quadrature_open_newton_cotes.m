function [ newton_coates, gdp ] = get_quadrature_open_newton_cotes( nodes, f_nodes )
%GET_QUADRATURE_CLOSED_NEWTON Summary of this function goes here
%   Detailed explanation goes here
    

    % NB WE HAVE N+1 NODES!
    n = length(nodes);    
   
    if((n < 3) || (n > 6))
        error('number or nodes should be between 1 and 4 !');
    end
    
    if ( mod(n,2) == 0)
        gdp = n - 3;
    else
        gdp = n - 2;
    end

    h = (nodes(end) - nodes(1))/(n-1);
                
    switch n
        case 3
            newton_coates =  f_nodes(2) * 2* h;
        case 4
            newton_coates = ((3*h)/2) * (f_nodes(2) + f_nodes(3));
        case 5 
            newton_coates = ((4*h)/3) * (2*f_nodes(2) - f_nodes(3) + 2*f_nodes(4));
        case 6
            newton_coates = ((5*h)/24) * (11*f_nodes(2) + f_nodes(3)+ f_nodes(4) + 11*f_nodes(5));
        otherwise
            disp('non implementato');
    end
    

end

