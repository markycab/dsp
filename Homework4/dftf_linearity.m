%TURNO, VIANELYN JAN R.

% Generating random sequences
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

X1 = x1 * (exp(-j*pi/500)).^(n'*k); % DTFT of x1
X2 = x2 * (exp(-j*pi/500)).^(n'*k); % DTFT of x2

% Linear combination of x1 & x2
x = alpha*x1 + beta*x2; 
X = x * (exp(-1j*pi/500)).^(n'*k); % Computing DTFT of x 

% Verification 
X_check = alpha*X1 + beta*X2; % Linear Combination of X1 & X2 

% Calculating the difference
error = max(abs(X-X_check)) % Difference
