% Jayar Lauddin
% Homework 4

n = -5:10;
x = rand(1,length(n)); 

k = -100:100; 
w = (pi/100)*k; 

% Computation
X = x * (exp(-1j*pi/100)).^(n'*k);

% Using Folding property
y = fliplr(x); 
m = -fliplr(n); 
Y = y * (exp(-1j*pi/100)).^(m'*k); 

% Verification
Y_check = fliplr(X); 
error = max(abs(Y-Y_check)); 