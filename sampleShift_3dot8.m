% Sinadhan, Mark Jonathan P.
% Sample Shift Property

% Creating time domain signals
x = rand(1,11);
n = 0:10;

% Freq domain 
k = 0:500; 
w = (pi/500)*k;

% Constants
alpha = 2; beta = 2;    % Coefficients 
y = x; 
m = n + 2;
exponential_term = (exp(-1i*pi/500));

% DTFT
X = x * exponential_term.^(n'*k);
Y = y * exponential_term.^(m'*k);

% Verify
% Linear combination of alpha with X1 and beta with X2
check_Y = (exp(-1i*2).^w).*X;
error = max(abs(Y-check_Y));
disp("Error: " + error);
