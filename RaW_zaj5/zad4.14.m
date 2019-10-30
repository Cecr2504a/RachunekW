H_R  = 1.00 ;
h_ob = [ 1.04 2.05 3.03 ]' ; % [m]
A    = [ 1 0 ; -1 1 ; 0 1 ]; 
m    = [ .02 ;  .02 ; .04 ] ; % [m]
L    = [ -H_R ; 0 ; -H_R ] - h_ob; % [m]
P = inv(diag(m.^2)); % [m^-2]

X = -inv(A'*P*A) * (A'*P*L);

V = A*X + L;

A'*P*V
abs(V'*P*V - (L'*P*A*X + L'*P*L)) < 1e-10
sigma = sqrt(V'*P*V/ (size(A)(1) - size(A)(2)))

h_w = h_ob + V 

X(1)-H_R
X(2)-X(1)
X(2)-H_R
