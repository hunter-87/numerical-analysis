a = 0;
b = 1;

realIntegral = zeros(1, 5);
simpson = zeros(1, 5);

for n = 2:2:10
    
    nodes = gen_uniform_nodes(a, b, n+1);
    
    % x*sin(x)
    f_nodes = nodes .* exp(-nodes);
    
    % sen(x)-xcos(x) + c 
    realIntegral(n/2) = (sin(nodes(end)) - nodes(end)*cos(nodes(end))) - ...
        ( sin(nodes(1)) - nodes(1)*cos(nodes(1))) ;
    
    simpson(n/2) = get_quadrature_simpson(nodes, f_nodes);
    
 
end



figure;
hold on;
plot(2:2:10,realIntegral,'*');


plot(2:2:10, simpson, 'r*');
plot(2:2:10, abs(realIntegral - simpson), 'g');
xlabel('n, having n+1 nodes');