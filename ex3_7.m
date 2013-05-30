

% exact values
integral_sin = - cos(2*pi) + cos(0);
integral_exp = exp(4) - exp(-4);
integral_datan = atan(5) - atan (-5);

interp_sin = zeros(9,1);
interp_exp = zeros(9,1);
interp_datan = zeros(9,1);

for n = 2:10

    % sin(x)
    nodes_sin = gen_uniform_nodes(0,2*pi,n+1);
    omega_sin = get_quadrature_interpolation_weight(nodes_sin);
    interp_sin(n-1) = omega_sin*sin(nodes_sin)';
    
    
    % e^x
    nodes_exp = gen_uniform_nodes(-4,4,n+1);
    omega_exp = get_quadrature_interpolation_weight(nodes_exp);
    interp_exp(n-1) = omega_exp*exp(nodes_exp)';

    % 1/(1+x^2)
    nodes_datan = gen_uniform_nodes(-5,5,n+1);
    omega_datan = get_quadrature_interpolation_weight(nodes_datan);
    interp_datan(n-1) = omega_datan*(1./(1+nodes_datan.*nodes_datan))';    
    

end

figure;
plot(abs(interp_sin - integral_sin));
title('Error - sin');
grid minor;
figure;
plot(abs(interp_exp - integral_exp));
title('Error - exp');
grid minor;
figure;
plot(abs(interp_datan - integral_datan));
title('Error - DaTan');
grid minor;
% for i =1:19
%     plot(i, interp_sin(i)-integral_sin);
% end
