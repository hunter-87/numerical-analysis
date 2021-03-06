a = 0;
b = 1;

errorTrapN = zeros(1,19);
errorTrapHalfN = zeros(1,19);

for n = 2 : 20
    nodes = gen_uniform_nodes(a, b, n+1);
    
    f = nodes .* sin(nodes);
           
    [errorTrapN(n-1), errorTrapHalfN(n-1)] = get_error_trapezoid(nodes,f);
    
    
end

figure;
hold on;
plot(2:20,errorTrapN,'b*');
plot(2:20,errorTrapHalfN,'r*');
grid;
