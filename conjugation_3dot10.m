% Sinadhan, Mark Jonathan P.
% Conjugation Property

% Creating time domain signals
n = -5:10;
x = rand(1,length(n)) + 1i*rand(1,length(n));
y = conj(x);      % conjugation of x

% Freq domain 
k = -100:100; 
w = (pi/100)*k;

% Constants
exponential_term = (exp(-1i*pi/100)).^(n'*k);

% DTFT
X = x * exponential_term;
Y = y * exponential_term;

% Verify
check_Y = conj(fliplr(X));
error = max(abs(Y-check_Y));
disp("Error: " + error);