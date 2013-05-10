% interpolation nodes

a = -1;
b = 1;
n_nodes=3;
nodes=a:(b-a)/n_nodes:b;


nodes
% tabulation numbers
% row column
xtab = min(nodes):0.01:max(nodes);


% get hermite u and v
[u_tab, v_tab, u_nodes, v_nodes, u_d, v_d] = hermite(nodes,xtab);

size(u_tab)
size(v_tab)
disp('propriet:')
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
plot(nodes, u_d, '*');
plot(nodes, v_d, '+');
legend(p, l,'Location','BestOutside');  
hold off;

%%%%%%%%%% end plot

% interpolation on chebyshev nodes

% n + 1 = 11
n = 3;
nodes = chebyshev_gen(-1,1,n);
% tabulation numbers
% row column
xtab = min(nodes):0.01:max(nodes);


% get hermite u and v
[u_tab, v_tab, u_nodes, v_nodes, u_d, v_d] = hermite(nodes,xtab);


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