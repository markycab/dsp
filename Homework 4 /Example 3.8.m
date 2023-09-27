x = rand(1,11); 
n = 0:10;
k = 0:500; 
w = (pi/500)*k;
X = x * (exp(-1j*pi/500)).^(n'*k);

% signal shifted by two samples
y = x; m = n+2;
Y = y * (exp(-1j*pi/500)).^(m'*k); 

% verification
Y_check = (exp(-1j*2).^w).*X; 
error = max(abs(Y-Y_check))
