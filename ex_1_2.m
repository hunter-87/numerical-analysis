% interpolation nodes
nodes = gen_uniform_nodes(0,100,10);
% tabulation numbers
xtab = min(nodes):0.01:max(nodes);

%%%%%%%%%%% plot on the same figure

figure;
cc=hsv(length(nodes));
hold on;
p = zeros(length(nodes),1);
l = strcat({'j='},int2str((1:length(nodes)).')).';
for j = 1:length(nodes)
    ytab = get_lagrange_basis(nodes, j, xtab);
    points = zeros(1,size(nodes,2));
    points(j)=1;
    p(j) = plot(xtab, ytab, 'color', cc(j,:));
    plot(nodes, points,'xk');
end
title('Lagrange bases - uniform nodes');
legend(p, l,'Location','BestOutside');%,'Orientation','horizontal');
hold off;

%%%%%%%%%% end plot