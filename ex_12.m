a = -1;
b = 1;

for n_nodes = 4:10

    [nodes, xtab] = gen_bernstein_nodes(a, b, n_nodes);

    f = 1./(1+25*nodes.*nodes);
    f1_xtab = 1./(1+25*xtab.*xtab);
    
    pol = interpolation_bernstein(nodes, xtab, f);

    figure;
    hold on;
    plot(xtab, pol, nodes, f,'*m');
    plot(xtab, f1_xtab, 'color', 'g');
end

