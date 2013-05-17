
% lunghezza del vettore
m = 5;

% x vettore lungo m
x = gen_uniform_nodes(1,5, m); 

%1:m;
% f lungo m
f = -x.*x;



% grado del polinomio n ( con n <=m )
n = 3;
if ( n <=m )

    % filter the vander matrix
    A = vander(x);
    A = A(:,end-n:end)
    % pol di migliore approx ai min quad grado n<=m
    
    [a, y] = solve_linear_system_least_squares_general(A, f');
    
    xtab =  min(x):0.01:max(x);
    v_ytab =  vander(xtab);
    v_ytab =  v_ytab(:,end-n:end);
    
    
    size(v_ytab)
    size(a)
    ytab = v_ytab*a;
    
    figure;
    plot(xtab,ytab,x,f,'*m');
    
    
else
   error('n>m !!!'); 
end
