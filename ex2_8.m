
% grado del polinomio: 2*n+1 
% NUMERO DISPARI DI BASI
n = 6;      % nostro caso 7 basi

%
% NB SE m = 2*n+1 CREIAMO POL TRIG INTERP
%
% lunghezza del vettore dati da x1 a xm
m = 13;


% f lungo m
f_pol = @(x) x.*x + x -10;
f_cos = @(x) cos(2*x);

[xtab1, xval1, x1, val1] = get_trigonometric_polynomial(n, 0, 2*pi, m, f_pol);
[xtab2, xval2, x2, val2] = get_trigonometric_polynomial(n, 0, 2*pi, m, f_cos);

xtab = 0:0.01:2*pi;

figure;
hold on;
plot(x1, val1, 'g*');
plot(xtab1, xval1, 'g');
plot(xtab, feval(f_pol,xtab), 'r');
figure;
hold on;
plot(x2, val2, 'g*');
plot(xtab2, xval2, 'g');
plot(xtab, feval(f_cos,xtab), 'r');



