% Sinadhan, Mark Jonathan P.
% Folding Property

% Creating time domain signals
n = -5:10;
x = rand(1,length(n));
y = fliplr(x);
m = -fliplr(n);

% Freq domain 
k = -100:100; 
w = (pi/100)*k;

% Constants
exponential_term = (exp(-1i*pi/100));

% DTFT
X = x * exponential_term.^(n'*k);
Y = y * exponential_term.^(m'*k);

% Verify
check_Y = fliplr(X);
error = max(abs(Y-check_Y));
disp("Error: " + error);