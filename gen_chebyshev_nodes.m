function [ nodes ] = gen_chebyshev_nodes( a, b, n )
%CHEBYSHEV_GEN Summary of this function goes here
%   interval [a,b], n elements

    x = 1:n;
    nodes = (b-a)/2.*cos(((2.*x+1)*pi)/((n+1)*2))+(b+a)/2;
    

end

