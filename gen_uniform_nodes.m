function [ nodes ] = gen_uniform_nodes( a, b, n )
%GEN_UNIFORM_NODES Summary of this function goes here
%   Detailed explanation goes here
    
    if a>b
        a
        b
        error('a must be less than b!');
    end
    
    % interpolation nodes
    nodes = a:(b-a)/(n-1):b;

end

