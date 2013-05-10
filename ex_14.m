a = 0;
b = 1;
n = 5;

% generate n+2 nodes
nodes = gen_uniform_nodes(a, b, n+2);
xtab = min(nodes):0.01:max(nodes);

f=sin(2*pi*nodes);
ftab = sin(2*pi*xtab);

p = 3;
pol = interpolation_bspline(nodes, xtab, f, p);
 
figure;
hold on;
plot(xtab, pol, nodes,f,'*m');
plot(xtab, ftab, 'color', 'g');
