x = rand(1, 11); n = 0:10;
k = 0:500; w = (pi/500)*k;
X = x* (exp(-j*pi/500)).^(n'*k);
y = x; m = n + 2;
Y = y* (exp(-j*pi/500)).^(m'*k);