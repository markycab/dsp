x = rand(1,11); 
k = 0:500; 
n = 0:10;
w = (pi/500)*k;

%-- X DTFT
X= x * (exp(-j*pi/500)).^(n'*k); 

% signal shifted by two samples
y = x; 
m = n+2;

%-- Y DTFT
Y= y * (exp(-j*pi/500)).^(m'*k); 

% 
Y_check = (exp(-j*2).^w).*X; % multiplication by exp(-j2w)
error = max(abs(Y-Y_check))  