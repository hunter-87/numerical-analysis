function [ u v ] = hermite( nodes, xtab )
%HERMITE Summary of this function goes here
%   Detailed explanation goes here
    
    
    u = zeros(length(nodes),length(xtab));
    v = zeros(length(nodes),length(xtab));
    %lagr_d = zeros(length(nodes),1);
    lagr_square = zeros(1,length(xtab));
    
    
    for j = 1:length(nodes)      
        l = lagrange(nodes, j, xtab);
        lagr_d = length(nodes)/(length(nodes)*nodes(j)-sum(nodes));
        %lagr_square(j,:) = l.*l;
        u(j) = (1-2*lagr_d(j).*(xtab - nodes(j))).*l.*l;
    end

    %tot = xtab(ones(1,length(nodes)),:);
    %nodes=nodes';
    %tot = tot - nodes(:,ones(length(xtab),1));
    
    %u = (1-2*lagr_d.*(tot)).*lagr_square;

    
        

end

 