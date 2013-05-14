function [ x ] = solve_linear_system_triangular_matrix( A, b )
%SOLVE_LINEAR_SYSTEM Summary of this function goes here
%   Detailed explanation goes here

    % solve Ax = b if A is triangular not singular
    [n m] = size(A);

    if (n < m)||(n > m)
        error('Not using a square matrix!');
    end

    if rank(A) < n
        error('Matrix is not singular!');
    end
    
    %x = (A\b)
    
    x = zeros(n, 1);

    % lower triangular
    if isequal(A, tril(A))
        x(1, 1) = b(1, 1)/A(1, 1);
        for i=2:n
            x(i, 1) = (b(i, 1) - A(i, 1:i-1)*x(1:i-1, 1))/A(i, i);
        end
    end

    % upper triangular
    if isequal(A, triu(A))
        x(n, 1) = b(n, 1)/A(n, n);
        for i=n-1:-1:1
            x(i, 1) = (b(i, 1) - A(i, i+1:n)*x(i+1:n, 1))/A(i, i);
        end
    end
    

end

