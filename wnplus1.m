function [ w_n_plus ] = wnplus1( nodes, xtab)
%WNPLUS1 Summary of this function goes here
%   Detailed explanation goes here

    w_n_plus = ones(1, length(xtab));
    for i=1:length(nodes)
        w_n_plus = w_n_plus.*(xtab-nodes(i));
    end
    
    
end

