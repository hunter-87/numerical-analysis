a = -1;
b = 1;
n_nodes=10;

%nodes=-1:(b-a)/n_nodi:1;
nodes=chebyshev_gen(a,b,n_nodes);

% tabulation numbers
% row column
xtab = min(nodes):0.01:max(nodes);

% general function and its derivate
f=sin(2*pi*nodes);
g=cos(2*pi*nodes)*2*pi;

% f=nodes.*nodes;
% g=2.*nodes;

% get hermite u and v
[u_tab, v_tab, u_nodes, v_nodes, u_d, v_d] = hermite(nodes,xtab);


    
% get the hermite iterpolation
pol = hermite_interpolation(u_tab,v_tab,f',g');

figure;
plot(xtab,pol);%,nodes,f,'*m');