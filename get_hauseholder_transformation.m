function [ t ] = get_hauseholder_transformation( u, x )
%GET_HAUSEHOLDER_TRANSFORMATION Summary of this function goes here
%   Detailed explanation goes here
    
%     beta = u'*u;
%     gamma = u'*x;
%     
%     t = x - beta * gamma*u;

    H = get_hauseholder_matrix(u);
    
    t = H*x;

end

