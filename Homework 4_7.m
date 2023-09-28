% Jayar Lauddin
% Homework 4
x1 = rand(1,11);
x2 = rand(1,11);

% time index
n = 0:10; 

% Scaling factors
alpha = 2;
beta = 3;

% Frequency index
k = 0:500;
w = (pi/500)*k; 

X1 = x1 * (exp(-1j*pi/500)).^(n'*k); 
X2 = x2 * (exp(-1j*pi/500)).^(n'*k); 

% Linear combination of both
x = alpha*x1 + beta*x2; 
% Computation
X = x * (exp(-1j*pi/500)).^(n'*k);  

% Verifying
X_check = alpha*X1 + beta*X2; 

% Calculation
error = max(abs(X-X_check));