% Abah, Al-razim H.
% Generate random sequences
x1 = rand(1,11); x2 = rand(1,11);
n = 0:10; % time index

alpha = 2; beta = 3; % Scaling factors
k = 0:500; w = (pi/500)*k;

X1 = x1 * (exp(-1i*pi/500)).^(n'*k); 
X2 = x2 * (exp(-1i*pi/500)).^(n'*k); 

% Linear combination of x1 & x2
x = alpha*x1 + beta*x2; 
X = x * (exp(-1j*pi/500)).^(n'*k); 

% Verification 
X_check = alpha*X1 + beta*X2; % Linear Combination of X1 & X2 

% Calculating the difference
error = max(abs(X-X_check)); % Difference