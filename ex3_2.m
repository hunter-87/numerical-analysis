% Per calcolare i pesi delle formule interpolatorie
% omegaUntitled2_i = integrale base lagrange
% se non abbiamo modo di calcolare base, come si fa quell'integrale?
% applichiamo integrale alla base lagrange

% prendiamo lagrange base 2 per esempio


% interpolation nodes
nodes = gen_uniform_nodes(0,100,10);


omega = get_quadrature_interpolation_weight(nodes);