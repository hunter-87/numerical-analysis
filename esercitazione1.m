% interpolation nodes

nodes = 0:10:100;

% tabulation numbers
% row column
xtab = nodes(1):0.01:nodes(length(nodes));


%%%%%%%%%%% plot on the same figure

figure;
cc=hsv(length(nodes));
hold on;
p = zeros(length(nodes),1);
l = strcat({'j='},int2str((1:length(nodes)).')).';
for j = 1:length(nodes)
    ytab = lagrange(nodes, j, xtab);
    points = zeros(1,size(nodes,2));
    points(j)=1;
    p(j) = plot(xtab, ytab, 'color', cc(j,:));
    plot(nodes, points,'xk');
end
title('Lagrange bases - uniform nodes');
legend(p, l,'Location','BestOutside');%,'Orientation','horizontal');
hold off;

%%%%%%%%%% end plot


% Question 3

% given experimental values
f = nodes.*nodes;

% function 
pn = lagrange_interpolation(nodes, xtab, f);
figure;
plot(xtab, pn);
title('Lagrange interpolation of x^2');



% Question 4 and 5

% n+1 nodes in [-1,1]

xtab = -1:0.01:1;
for n = 3:10
    nodes = -1:(2/n):1;
    nodes_c =  chebyshev_gen(-1,1,n);
    
    f1 = 1./(1+25*nodes.*nodes);
    f2 = sin(2*pi*nodes);
    f1_c = 1./(1+25*nodes_c.*nodes_c);
    f2_c = sin(2*pi*nodes_c);
    f1_xtab = 1./(1+25*xtab.*xtab);
    f2_xtab = sin(2*pi*xtab);
    
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











