clc
clear

%EXAMPLE 3.7
x1 = rand(1,11); x2 = rand(1,11); n = 0:10;
alpha = 2; beta = 3; k = 0:500; w = (pi/500)*k;
X1 = x1 * (exp(-1i*pi/500)).^(n'*k); % DTFT of x1
X2 = x2 * (exp(-1i*pi/500)).^(n'*k); % DTFT of x2
x = alpha*x1 + beta*x2; % Linear combination of x1 & x2
X=x* (exp(-1i*pi/500)).^(n'*k); % DTFT of x
% verification
X_check = alpha*X1 + beta*X2; % Linear Combination of X1 & X2
error = max(abs(X-X_check)); % Difference
display(error);



