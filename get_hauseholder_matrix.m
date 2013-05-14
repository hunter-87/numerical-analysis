function [ H ] = get_hauseholder_matrix( x )
%GET_HAUSEHOLDER_MATRIX Summary of this function goes here
%   Detailed explanation goes here

    a = 2/(x'*x);
    
    H = eye(length(x)) - a*x*x';

end

