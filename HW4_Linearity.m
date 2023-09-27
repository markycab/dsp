%generate random sequences
x1 = rand(1,11);
x2 = rand(1,11);

%for time index
t = 0:10; 

%for scaling factors
alpha = 2;
beta = 3;

%for frequency index
k = 0:500;
w = (pi/500)*k; 

X1 = x1 * (exp(-j*pi/500)).^(t'*k); %dtft of x1
X2 = x2 * (exp(-j*pi/500)).^(t'*k); %dtft of x2

%linear combination of x1 & x2
x = alpha*x1 + beta*x2; 
X = x * (exp(-1j*pi/500)).^(t'*k); %dtft of x 

% Verification 
X_check = alpha*X1 + beta*X2; %linear combination of X1 & X2 

%for calculating the difference
error = max(abs(X-X_check))
