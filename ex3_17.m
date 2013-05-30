a = 0;
b = 2*pi;
n = 4;


% tolerance 
tol = 0.01;

% x between 0 and 2*pi
nodes = a:0.01:b;

f = @(x) function_17(x);   %x.*x;

plot(nodes,f(nodes));

integral = get_quadrature_adaptive(a,b,n,tol,f)
real_integral = (7/192)*pi* (-12-12*pi+73*pi^2) + 1/6


