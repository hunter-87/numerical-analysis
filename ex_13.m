a = 0;
b = 1;
n = 2;

% generate n+2 nodes
nodes = gen_uniform_nodes(a, b, n+2);
xtab = min(nodes):0.01:max(nodes);

% p degree
p = n;
boore_base = get_bspline_boore_basis(p, nodes, xtab);

figure;
plot(xtab,boore_base{p+1});
