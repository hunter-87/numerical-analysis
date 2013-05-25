
realIntegral = zeros(1, 4);
new_coates = zeros(1, 4);

for n=1:4
    nodes = gen_uniform_nodes(0, 1, n+1);
    f_nodes = nodes.*nodes;
    
    realIntegral(n) = 2*nodes(end) - 2*nodes(1);
    
    new_coates(n) = get_quadrature_closed_newton_cotes(nodes, f_nodes);
    
end

figure;
hold on;
plot(1:4,realIntegral);
plot(1:4,new_coates, 'r');
plot(abs(realIntegral - new_coates));