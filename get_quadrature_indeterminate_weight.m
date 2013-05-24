function [ omega ] = get_quadrature_indeterminate_weight( nodes )
%GET_QUADRATURE_INDETERMINATE_WEIGHT Summary of this function goes here
%   Detailed explanation goes here
     
    a = min(nodes);
    b = max(nodes);
     
    B_vect = zeros(length(nodes),1);
    
    for i = 1:length(nodes)
        B_vect(i) = (b^i - a^i ) / (i);
    end
    
    vander_matrix = flipud(vander(nodes)');
    
    omega = vander_matrix\ B_vect;

    % reorder weight
    %omega = omega(end:-1:1,:);

end

