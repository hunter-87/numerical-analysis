

figure;
hold on;

cc=hsv(19);
p = zeros(19,1);
l = strcat({'n = '},int2str((1:19).')).';

for n = 2:20
    x_nodes = 0:n;
    omega = get_quadrature_indeterminate_weight(x_nodes);
    p(n-1) = plot(x_nodes, omega, '*', 'color', cc(n-1,:));

end

title('Weight Variation');
legend(p, l,'Location','BestOutside');%,'Orientation','horizontal');
