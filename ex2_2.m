
% def Matrix triangular not sing
 R = [ 1 2 3; 0 1 2; 0 0 1];

% def b
b = [1;2;3];

x = solve_linear_system_triangular_matrix(R, b)

