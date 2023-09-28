% Zen Earl J. Alcala
% Homework 4

n = -5:10;
x = rand(1,length(n)) + 1j*rand(1,length(n)); 

k = -100:100; 
w = (pi/100)*k; 

% Computation
X = x * (exp(-1j*pi/100)).^(n'*k);

% Conjugation 
y = conj(x); 
Y = y * (exp(-1j*pi/100)).^(n'*k); 

% Verification
Y_check = conj(fliplr(X)); 
error = max(abs(Y-Y_check)); 