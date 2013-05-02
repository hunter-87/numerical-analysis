% interpolation nodes

% n + 1 = 11
nodes = 0:10:100;

% tabulation numbers
% row column
xtab = nodes(1):0.01:nodes(length(nodes));


%%%%%%%%%%% plot on the same figure

figure;
cc=hsv(length(nodes));
hold on;
[u v] = hermite(nodes, xtab);
% p contains al the plots
p = zeros(length(nodes),1);
l = strcat({'j='},int2str((1:length(nodes)).')).';
title('Hermite bases - uniform nodes');

for j = 1:length(nodes)
    clf;
    u_tab = u(j,:);
    v_tab = v(j,:);
    %points = zeros(1,size(nodes,2));
    %points(j)=1;
    plot(xtab, u_tab, 'color', 'r');
    %p(j) = 
    plot(xtab, v_tab, 'color', 'b');
    pause;
end


%plot(xtab, u, 'color', 'm');
%plot(xtab, v, 'color', 'r');
%legend(p, l,'Location','BestOutside');  
hold off;

%%%%%%%%%% end plot