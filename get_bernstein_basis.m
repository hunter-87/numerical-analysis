function [ phi ] = get_bernstein_basis(nodes, xtab)
%BERSTEIN Summary of this function goes here
%   Detailed explanation goes here
    
    a = min(nodes);
    b = max(nodes);
    
    phi = zeros(length(nodes), length(xtab));
    
    for j = 0:(length(nodes)-1)
        
        phi(j+1,:) = nchoosek(length(nodes)-1, j).*((xtab-a)/(b-a)).^j.*(1-((xtab-a)/(b-a))).^(length(nodes)-1-j);
        
    end
    %phi
end

