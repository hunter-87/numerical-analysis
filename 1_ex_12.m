a = -1;
b = 1;
n_nodes=30;

[nodes, xtab] = gen_berstein_nodes(a, b, n_nodes);


f = 1./(1+25*nodes.*nodes);

pol = berstein_interpolation(nodes, xtab, f);
pol
f1_xtab = 1./(1+25*xtab.*xtab);
% general function and its derivate

% get the hermite iterpolation

figure;
hold on;
plot(xtab,pol);%,nodes,f,'*m');
plot(xtab, f1_xtab, 'color', 'g');
