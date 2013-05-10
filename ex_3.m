% Question 3

% interpolation nodes
nodes = gen_uniform_nodes(0,100,10);
% tabulation numbers
xtab = min(nodes):0.01:max(nodes);

% given experimental values ( f = x^2 )
f = nodes.*nodes;

% function 
pn = interpolation_lagrange(nodes, xtab, f);
figure;
plot(xtab, pn);
title('Lagrange interpolation of x^2');