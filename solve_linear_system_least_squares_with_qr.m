function [ x, x_val ] = solve_linear_system_least_squares_with_qr( A, b )
%SOLVE_LINEAR_SYSTEM_LEAST_SQUARES_WITH_QR Summary of this function goes here
%   Detailed explanation goes here

    if (rank(A) == min(size(A)) )
        
        [Q, R] = get_qr_decomposition(A);

        col = size(R,2);
        % column vector [c1;c2]
        c = Q'*b;
        c1 = c(1:col);
        c2 = c(col+1:end);

        % get the U part of R matrix
        U = R(1:col,1:col); 
        disp('full rank');

        if (det(U)~=0)
            x = U\c1;
            x_val = norm(c2);
        else
             error('det(u) = 0');
        end    

    else
        error('Matrix not full rank');
    end
    
end

