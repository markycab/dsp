% Sinadhan, Mark Jonathan P.
% Lineartiy Property

% Creating time domain signals
x1 = rand(1,11);
x2 = rand(1,11);
n = 0:10;

% Freq domain
k = 0:500; 
w = (pi/500)*k;

% Constants
alpha = 2; beta = 2;    % Coefficients 
exponential_term = (exp(-1i*pi/500)).^(n'*k);

% DTFT
X1 = x1 * exponential_term;
X2 = x2 * exponential_term;

% Linear combination of alpha with x1 and beta with x2
x = alpha * x1 + beta * x2; 

% Dtft of x
X = x * exponential_term;

% Verify
% Linear combination of alpha with X1 and beta with X2
check_X = alpha * X1 + beta * X2;
error = max(abs(X-check_X));
disp("Error: " + error);
