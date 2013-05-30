a = 0;
b = 1;

realIntegral = zeros(1,10);
ncSimp = zeros(1,10);

for n = 2:2:20
    nodes = gen_uniform_nodes(a, b, n+1);
    f_nodes = nodes .* exp(-nodes);
    
    % Integrale di x*e^(-x) = -e^(-x)*(x+1)
    realIntegral(n/2) = (-exp(-nodes(end))*(nodes(end)+1)) - ...
        (-exp(-nodes(1))*(nodes(1)+1));
    
    ncSimp(n/2) = get_quadrature_simpson(nodes,f_nodes);
    
end

figure;
plot(2:2:20,realIntegral,'*');
hold on
plot(2:2:20,ncSimp,'*r');