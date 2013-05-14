function [ x_min, val_min ] = solve_linear_system_least_squares( A, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [n, m] = size(A);
    
    if (n > m)
        error('Wrong dimension n > m !');
    end
    
    if (rank(A) == (size(A,1)))
        disp('full rank yay');
        
        %R = chol(A);
        %x_min = solve_linear_system_triangular_matrix(A'*A, A'*b);
        
        x_min = ( A'*A )\ A'*b;
        val_min = norm(A*x_min-b);
    else
        error('Matrix not full rank');
    end
    
    

end

