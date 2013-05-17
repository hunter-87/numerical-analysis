function [ Q, R ] = get_qr_decomposition( A )
%GET_QR_DECOMPOSITION Summary of this function goes here
%   Detailed explanation goes here

    [n, m] = size(A);

    % Q e U fattorizzazione QU
    Q = eye(n);
    I = eye(n);

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
    
    Q=Q';
    R=A;
end

