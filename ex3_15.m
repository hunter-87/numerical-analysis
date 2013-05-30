%ESERCITAZIONE3
%Punto15

errorTrap1 = zeros(1, 9);
errorTrap2 = zeros(1, 9);
errorTrap3 = zeros(1, 9);

errorReal1 = zeros(1, 9);
errorReal2 = zeros(1, 9);
errorReal3 = zeros(1, 9);

for n = 2 : 10
    
    %Sin(x)
    nodes1 = gen_uniform_nodes(0,2*pi,n+1);
    f1 = sin(nodes1);
    realInt1 = cos(nodes1(1)) - cos(nodes1(end));
    ncTrap1 = get_quadrature_trapezoid(nodes1,f1);
    
    %Exp(x)
    nodes2 = gen_uniform_nodes(-4,4,n+1);
    f2 = exp(nodes2);
    realInt2 = exp(nodes2(end)) - exp(nodes2(1));
    ncTrap2 = get_quadrature_trapezoid(nodes2,f2);
    
    %1/(1+x^2)
    nodes3 = gen_uniform_nodes(-5,5,n+1);
    f3 = 1 ./ (1+nodes3.^2);
    realInt3 = atan(nodes3(end)) - atan(nodes3(1));
    ncTrap3 = get_quadrature_trapezoid(nodes3,f3);
    
    errorTrap1(n-1) = get_error_trapezoid(nodes1,f1);
    errorReal1(n-1) = abs(ncTrap1 - realInt1);
    
    errorTrap2(n-1) = get_error_trapezoid(nodes2,f2);
    errorReal2(n-1) = abs(ncTrap2 - realInt2);

    errorTrap3(n-1) = get_error_trapezoid(nodes3,f3);
    errorReal3(n-1) = abs(ncTrap3 - realInt3);

    
end

figure;
hold on;
plot(2:10,errorTrap1,'b*');
plot(2:10,errorReal1,'r*');
grid;

figure;
hold on;
plot(2:10,errorTrap2,'b*');
plot(2:10,errorReal2,'r*');
grid;

figure;
hold on;
plot(2:10,errorTrap3,'b*');
plot(2:10,errorReal3,'r*');
grid;