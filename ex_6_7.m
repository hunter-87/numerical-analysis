% Question 6 - 7

a = 0;
b = 1;

% tabulation numbers
xtab = 0:0.01:1;

% n = 4, 6, 8, 10, 12
for n=4:2:12
    
    % n+1 nodes in [0,1]
    nodes = gen_uniform_nodes(a,b,n+1);
    nodes_c =  gen_chebyshev_nodes(a,b,n+1);
    
    wnp = wnplus1(nodes, xtab);
    wnp_c = wnplus1(nodes_c, xtab);

    figure;
    plot(xtab, wnp);
    hold on;
    plot(xtab, wnp_c, 'color','r');
    plot(nodes, wnplus1(nodes, nodes),'xk');
    plot(nodes_c, wnplus1(nodes_c, nodes_c),'og');
    hold off;
    title('w_{(n+1)} function');
    legend({'uniform','chebyshev','uniform nodes','chebyshev nodes'});
    
end
