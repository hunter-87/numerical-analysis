% Question 3

% interpolation nodes

nodes = 0:10:100;

% tabulation numbers
% row column
xtab = nodes(1):0.01:nodes(length(nodes));

% given experimental values ( f = x^2 )
f = nodes.*nodes;

% function 
pn = lagrange_interpolation(nodes, xtab, f);
figure;
plot(xtab, pn);
title('Lagrange interpolation of x^2');