
%
A0 = [1 2 3; 0 1 2; 0 4 1];%; 2 3 4; 5 4 8];
[Q, R] = get_qr_decomposition(A0)
norm(A0 - Q*R)
A0 - Q*R
% 
% [QM, RM] = qr(A0);
% A0 - QM*RM
% QM*RM
% A0
% norm(Q - QM)
% norm(R - RM)