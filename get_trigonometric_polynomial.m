function [ xtab, pol, x, f_eval ] = get_trigonometric_polynomial( n, a, b, m, f)
%GET_TRIGONOMETRIC_POLYNOMIAL Summary of this function goes here
%   Detailed explanation goes here

    if (m<(2*n+1)) 
        error('m cannot be < 2n+1');
    end
    
    % n: grado del polinomio: 2*n+1 
    % m: numero nodi
    % a: inizio intervallo nodi
    % b: fine intervallo nodi
    % f: function
  
    % create uniform nodes with m+1 nodes removing
    x = gen_uniform_nodes(a, b, m+1);
    x = x(1:end-1);
    
    %x = ((0:(m-1))*2*pi)/m;

    f_eval = feval(f, x);

    % _VISTO CHE USIAMO NODI UNIFORMI_
    a_k = zeros(1, n);
    b_k = zeros(1, n);

    % 2/length(x)  => 2/m+1
    a_k0 = (1/m) * sum(f_eval);

    xtab = -2*pi:0.01:2*pi;
    
    pol = zeros(1, length(xtab));

    for k = 1:n

        a_k(k) =  (2/m) * f_eval*cos(k*x)';
        b_k(k) =  (2/m) * f_eval*sin(k*x)';
        
        pol = pol + a_k(k)*cos(k*xtab) + b_k(k)*sin(k*xtab);

    end
    
%     A
%     B
%     aZero
%     a_k
%     b_k
%     a_k0
%     

%     pol
%     P
    pol = pol + a_k0;
%     pol = P(:,1);
    
end

