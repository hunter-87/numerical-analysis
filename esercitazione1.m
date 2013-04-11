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
%rng('default');
%f = rand(1,length(nodes))*100;
%f = nodes.*nodes;

% function 
pn = lagrange_interpolation(nodes, xtab, f);
figure;
plot(xtab, pn);


















