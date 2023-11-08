x1=rand(1,11); n=0:10;
k=0:500; w=(pi/500)*k;

X=x1*(exp(-1i*pi/500)).^(n'*k);

y=x1; m=n+2;

Y=y*(exp(-1i*pi/500)).^(m'*k);

shifted_X = X.*((exp(-1i*2)).^w);
error = max(abs(Y - shifted_X))