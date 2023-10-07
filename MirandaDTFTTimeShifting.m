x = rand(1, 11); % random sequence with 11 elements
n = 0:10;
v = 0:500; % vector ranges from 0 to 500
w = (pi/500)*v;
X = x* (exp(-j*pi/500)).^(n'*v);
y = x; m = n + 2;
Y = y* (exp(-j*pi/500)).^(m'*v); %  computes the DTFT of the shifted signal 