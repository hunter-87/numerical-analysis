% Question 4 and 5

% tabulation numbers
xtab = -1:0.01:1;

for n = 3:10
    
    % n+1 nodes in [-1,1]
    nodes = -1:(2/n):1;
    nodes_c =  chebyshev_gen(-1,1,n);
    
    
    f1 = 1./(1+25*nodes.*nodes);
    f1_c = 1./(1+25*nodes_c.*nodes_c);
    
    f2 = sin(2*pi*nodes);
    f2_c = sin(2*pi*nodes_c);
    
    f1_xtab = 1./(1+25*xtab.*xtab);
    f2_xtab = sin(2*pi*xtab);
    
    % f1 lagrange interpolation
    pn1 = lagrange_interpolation(nodes, xtab, f1);
    pn1_c = lagrange_interpolation(nodes_c, xtab, f1_c);
    
    figure;
    plot(xtab, pn1);
    hold on;
    plot(xtab, pn1_c, 'color', 'm');
    plot(nodes, f1,'xk');
    plot(xtab, f1_xtab, 'color', 'g');
    title(strcat('Lagrange interpolation of 1/(1+25x^2), n = ',int2str(n)));
    legend({'uniform','chebyshev','nodes','original'});
    hold off;

    
    % f2 lagrange interpolation
    pn2 = lagrange_interpolation(nodes, xtab, f2);
    pn2_c = lagrange_interpolation(nodes_c, xtab, f2_c);
    
    figure;
    plot(xtab, pn2);
    hold on;
    plot(xtab, pn2_c, 'color', 'm');
    plot(nodes, f2,'xk');
    plot(xtab, f2_xtab, 'color', 'g');
    title(strcat('Lagrange interpolation of sin(2*pi*x), n = ',int2str(n)));
    legend({'uniform','chebyshev','nodes','original'});
    hold off;


end

