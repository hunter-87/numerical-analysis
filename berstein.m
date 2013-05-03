function [ phi ] = berstein(nodes, xtab)
%BERSTEIN Summary of this function goes here
%   Detailed explanation goes here

    phi = zeros(length(nodes), length(xtab));
    
    
    for j = 0:(length(nodes)-1)
        
        phi(j+1,:) = nchoosek(length(nodes)-1, j).*xtab.^j.*(1-xtab).^(length(nodes)-1-j);
        
    end
    %phi
end

