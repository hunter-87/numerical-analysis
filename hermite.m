function [ u v ] = hermite( nodes, xtab )
%HERMITE Summary of this function goes here
%   Detailed explanation goes here
    
    
    u = zeros(length(nodes),length(xtab));
    v = zeros(length(nodes),length(xtab));
    %lagr_d = zeros(length(nodes),1);
    lagr_square = zeros(1,length(xtab));
    
    
    for j = 1:length(nodes)      
        l = lagrange(nodes, j, xtab);
        nodes_minus_j = nodes;
        nodes_minus_j(j) = [];
        lagr_d = sum( 1./(nodes(j)-nodes_minus_j) );
        
        lagr_square = l.*l;
        
        u(j,:) = (1-2*lagr_d*(xtab - nodes(j))).*lagr_square;
        v(j,:) = (xtab-nodes(j)).*lagr_square;

    end


    
        

end

 