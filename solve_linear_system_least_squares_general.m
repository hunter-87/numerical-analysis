function [ x_min, val_min ] = solve_linear_system_least_squares_general( A, b )
%SOLVE_LINEAR_SYSTEM_LEAST_SQUARES_GENERAL Summary of this function goes here
%   Detailed explanation goes here
    [n, m] = size(A);
    
    if (rank(A) == (min(size(A))))
        disp('full rank yay');
        
        
        %R = chol(A'*A);
        %y = solve_linear_system_triangular_matrix(R', A'*b);
        %x_min = solve_linear_system_triangular_matrix(R, y);
        %( A'*A )\ A'*b
        x_min = ( A'*A )\ A'*b;
        val_min = norm(A*x_min-b);
    else
        error('Matrix not full rank');
    end
    
    

end
