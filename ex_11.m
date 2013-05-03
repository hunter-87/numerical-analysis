a = 0;
b = 1;
n_nodes=10;

[nodes, xtab] = gen_berstein_nodes(a,b,n_nodes);
nodes
phi = berstein(nodes, xtab);

figure;
plot(xtab,phi);