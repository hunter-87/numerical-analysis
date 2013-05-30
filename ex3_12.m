a = 0;
b = 1;

realIntegral = zeros(1,19);
trapezoid = zeros(1,19);

for n = 2:20
    nodes = gen_uniform_nodes(a, b, n+1);
    
    % x*sin(x)
    f_nodes = nodes.*sin(nodes);
    
    % Integrale di xsin(x) = sin(x) - xcos(x)
    realIntegral(n-1) = (sin(nodes(end)) - nodes(end)*cos(nodes(end))) - ...
        ( sin(nodes(1)) - nodes(1)*cos(nodes(1))) ;
    
    trapezoid(n-1) = get_quadrature_trapezoid(nodes, f_nodes);
    
end


figure;
hold on;
plot(2:20,realIntegral,'*');
plot(2:20,trapezoid, 'r*');
plot(2:20,abs(realIntegral - trapezoid),'g*');
xlabel('n, having n+1 nodes');
