function [ errorTrapN, errorTrapHalfN ] = get_error_trapezoid( nodes, f )
%GET_ERROR_TRAPEZOID Summary of this function goes here
%   Detailed explanation goes here

    ncTrapN = get_quadrature_trapezoid(nodes,f);
    ncTrapHalfN = get_quadrature_trapezoid(nodes(1:2:end),f(1:2:end));

    errorTrapN = abs(ncTrapN - ncTrapHalfN) / 3;
    errorTrapHalfN = 4 * errorTrapN;

end
