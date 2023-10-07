n = -5:10;
x = sin(pi*n/2);
v = -100:100; %for the vector that ranges from -100 to 100
w = (pi/100)*v;
X = x*(exp(-1j*pi/100)).^(n'*v);

[xe,xo,m] = evenodd(x,n); % to split the signal into it even and odd components