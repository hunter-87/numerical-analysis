% interpolation nodes

% n + 1 = 11
nodes = 0:10:100;

% tabulation numbers
% row column
xtab = nodes(1):0.01:nodes(length(nodes));


% get hermite u and v
[u_tab, v_tab, u_nodes, v_nodes, u_d, v_d] = hermite(nodes,xtab);
size(u_tab)
    size(v_tab)
disp('proprietà:')
disp('u_j')
u_nodes
disp('v_j')
v_nodes
disp('u derivate')
u_d
disp('v derivate')
v_d
    
%%%%%%%%%%% plot on the same figure
figure;
cc=hsv(length(nodes));
hold on;
% p contains al the plots
p = zeros(length(nodes),1);
l = strcat({'j='},int2str((1:length(nodes)).')).';
title('Hermite bases - uniform nodes');

for j = 1:length(nodes)
    %clf;
    %points = zeros(1,size(nodes,2));
    %points(j)=1;
    p(j) = plot(xtab, u_tab(j,:), 'color',  cc(j,:));
    %p(j) = 
    plot(xtab, v_tab(j,:), '--', 'color',  cc(j,:));
    %pause;
end

legend(p, l,'Location','BestOutside');  
hold off;

%%%%%%%%%% end plot