

% A: m*n

% b: n


A = [ 1 2 3; 0 1 2; 0 0 1]%; 5 6 7; 8 9 2];

% def b
b = [1;2;3]%;4;5];

% our implementation 
[Q, R] = get_qr_decomposition(A);


% 
% col = size(R,2)
% % column vector [c1;c2]
% c = Q'*b
% c1 = c(1:col);
% c2 = c(col+1:end);
% 
% % get the U part of R matrix
% U = R(1:col,1:col);
% 
% if (rank(A) == (size(A,1)) & det(U)~=0 )
%     disp('full rank and det not 0');
    
    
[x, x_val] = solve_linear_system_least_squares_with_qr(A, b)

disp('compare with general algorithm');

[x1, val_x1] = solve_linear_system_least_squares_general(Q*R, b)
