a = -1;
b = 1;
n_nodes=10;

[nodes, xtab] = gen_bernstein_nodes(a,b,n_nodes);
nodes;
phi = get_bernstein_basis(nodes, xtab);

figure;
plot(xtab,phi);



