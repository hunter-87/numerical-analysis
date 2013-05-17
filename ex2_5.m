
%
A0 = [1 2 3; 0 1 2; 0 4 1];
[n, m] = size(A);

% Q e U fattorizzazione QU
Q = eye(n);
I = eye(n);
A = A0;

for i = 1:m
    
    % get the column to build Hauseholder
    a = A(:,i);
    % set to 0 the first i-1 elements
    a(1:i-1) = zeros(i-1, 1);
    % get the element of the I matrix
    e = I(:,i);
    % get the new value of the i-element
    v = a + sign(a(i)) * norm(a) * e;
    
    % get hauseholder of the vector a modified at the i-element
    H = get_hauseholder_matrix(v);
    
    % set the new A
    A = H * A;
    
    % update Q
    Q = H * Q;
    
end

Q=Q'
R=A
norm(A0 - Q*R)
A0 - Q*R

% [QM, RM] = qr(A0)
% A0 - QM*RM
% QM*RM
% A0
% norm(Q - QM)
% norm(R - RM)