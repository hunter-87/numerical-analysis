function [ nodes, xtab ] = gen_bernstein_nodes( a, b, n )
%GEN_BERSTEIN_NODES Summary of this function goes here
%   Detailed explanation goes here

    pass = (b-a)/n;
    nodes = a:pass:b;
    xtab = min(nodes):0.01:max(nodes);

end

