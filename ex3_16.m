a = 0;
b = 2*pi;
n = 4;


% tolerance 
tol = 0.01;

f = @(x) sin(x);   %x.*x;

integral = get_quadrature_adaptive(a,b,n,tol,f)
real_integral = cos(a)  - cos(b)    %(b^3)/3 - (a^3)/3 %



