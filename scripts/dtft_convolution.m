n=0:10; x=rand(1,length(n)); m=0:4; h=rand(1,length(m));
k=0:500; w=(pi/500)*k;

[y, ny]=conv_m(x,n,h,m);
Y=y*(exp(-1i*pi/500)).^(ny'*k);

X=x*(exp(-1i*pi/500)).^(n'*k);
H=h*(exp(-1i*pi/500)).^(m'*k);

error=max(abs(Y-X.*H))
