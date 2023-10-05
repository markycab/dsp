n = -5:10;
x = sin(pi*n/2);
k = -100:100;
w = (pi/100)*k;
X = x*(exp(-1j*pi/100)).^(n'*k);
[xe,xo,m] = evenodd(x,n);