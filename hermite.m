function [ u_tab,v_tab,u_nodes, v_nodes, u_d, v_d ] = hermite( nodes, xtab )
%HERMITE Summary of this function goes here
%   Detailed explanation goes here
    
    
    u_tab=zeros(length(nodes),length(xtab));
    v_tab=zeros(length(nodes),length(xtab));

    u_nodes=zeros(length(nodes),length(nodes));
    v_nodes=zeros(length(nodes),length(nodes));

    u_d=zeros(length(nodes),length(nodes));
    v_d=zeros(length(nodes),length(nodes));
        
    
    for j = 1:length(nodes)
        
        l_tab = lagrange(nodes,j,xtab);
        l_nodes = lagrange(nodes,j,nodes);
    
        % lagrange derivate in x_j
        nodes_minus_j = nodes;
        nodes_minus_j(j) = [];
        lagr_d = sum( 1./(nodes(j)-nodes_minus_j) );
        
        lagr_square_tab=l_tab.*l_tab;
        lagr_square_nodes=l_nodes.*l_nodes;
        
        % values of u and v in the tabulation points
        u_tab(j,:)=(1-2*lagr_d*(xtab-nodes(j))).*lagr_square_tab;
        v_tab(j,:)=(xtab-nodes(j)).*lagr_square_tab;

        % values of u and v in the interpolation points
        u_nodes(j,:)=(1-2*lagr_d*(nodes-nodes(j))).*lagr_square_nodes;
        v_nodes(j,:)=(nodes-nodes(j)).*lagr_square_nodes;
    
        % get values of u and v derivates
        u_d(j,:)=-2*lagr_d.*lagr_square_nodes+(1-2*lagr_d.*(nodes-nodes(j)))*2.*l_nodes*lagr_d;
        v_d(j,:)=lagr_square_nodes+(nodes-nodes(j)).*l_nodes*lagr_d;

    end

end

 