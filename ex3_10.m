a = 0;
b = 1;

realIntegral = zeros(1, 9);
trapezoid = zeros(1, 9);

for n = 2:10
    
    nodes = gen_uniform_nodes(a, b, n+1);
    
    % x*sin(x)
    f_nodes = nodes.*sin(nodes);
    
    % sen(x)-xcos(x) + c 
    realIntegral(n-1) = (sin(nodes(end)) - nodes(end)*cos(nodes(end))) - ...
        ( sin(nodes(1)) - nodes(1)*cos(nodes(1))) ;
    
    trapezoid(n-1) = get_quadrature_trapezoid(nodes, f_nodes);
    
end



figure;
hold on;
plot(2:10,realIntegral);
plot(2:10,trapezoid, 'r');
plot(2:10,abs(realIntegral - trapezoid),'g');
xlabel('n, having n+1 nodes');