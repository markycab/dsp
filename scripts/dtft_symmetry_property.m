n=-5:10; x=sin(pi*n/2);
k=-100:100; w=(pi/100)*k;

[xe,xo,m]=evenodd(x,n);
XE=xe*(exp(-1i*pi/100)).^(m'*k);
XO=xo*(exp(-1i*pi/100)).^(m'*k);

X=x*(exp(-1i*pi/100)).^(n'*k);
error = max(abs((1i*imag(X)) - XO))