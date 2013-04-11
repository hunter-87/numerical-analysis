function [ l_base ] = lagrange( nodes, j, xtab)
%LAGRANGE 
%   from a nodes vector of x+1 and an integer j create the lagrangian base
%   lj(x)
    
       
    % create the base
    n = size(nodes,2);
    
    % column vector
    l_base=ones(1,size(xtab,2));
    
    for i=1:n
       if i~=j
        l_base = l_base.*(xtab - nodes(i))/(nodes(j) - nodes(i));
       end
    end
     

end

