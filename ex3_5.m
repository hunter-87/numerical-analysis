
a = 0;
b = 1;
n = 10;

% interpolation nodes
nodes = gen_uniform_nodes(a,b,n+1);

omega = get_quadrature_indeterminate_weight(nodes);
