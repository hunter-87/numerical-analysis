function [ base_total ] = get_bspline_boore_basis(p, nodes, xtab )
%GET_BSPLINE_BOORE_BASIS Summary of this function goes here
%   Detailed explanation goes here


m = length(nodes)-2;
%array of matrix
base_total = cell(p,1);

for j=0:p
    B_base = zeros(m+2*j+1,length(xtab));
    %vai da -p a m+1
    for i=(1):(m+j+1)
        pass = nodes(2)-nodes(1);
        pre = min(nodes)-j*pass:pass:min(nodes)-pass;
        post = max(nodes)+pass:pass:max(nodes)+pass*(j);
        nodes_aux = [pre nodes post];
        
        if j==0  
           if i<length(nodes)
            B_base(i,xtab >= nodes(i) & xtab < nodes(i+1))=1;
           end
        else
            % add 1 row in head and 1 row in tail to match the new matrix
            % dimension
            temp1 = [zeros(1,length(xtab)) ; base_total{j} ; zeros(1,length(xtab))];
            temp2 = [zeros(1,length(xtab)) ; base_total{j} ; zeros(1,length(xtab))];
            B_base(i,:) = ((xtab - nodes_aux(i))/(nodes_aux(i+j) - nodes_aux(i))) .* temp1(i,:) + ...
                ((nodes_aux(i+j+1)-xtab)/(nodes_aux(i+j+1)-nodes_aux(i+1))) .* temp2(i+1,:);
        end
        
    
    end
    base_total{j+1} = B_base;
    
end


end

