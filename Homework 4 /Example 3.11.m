n = -5:10; 
x = rand(1,length(n));
k = -100:100; 
w = (pi/100)*k;                 
X = x * (exp(-j*pi/100)).^(n'*k);% x DTFT

% folding property
y = fliplr(x); m = -fliplr(n);% fold
Y=y* (exp(-j*pi/100)).^(m'*k);% y DTFT

% verification
Y_check = fliplr(X);             
error = max(abs(Y-Y_check))% Difference
