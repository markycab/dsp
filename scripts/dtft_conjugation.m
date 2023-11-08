n=-5:10; x=rand(1,length(n))+1i*rand(1,length(n));  
k=-100:100; w=(pi/100)*k;

X=x*(exp(-1i*pi/100)).^(n'*k);
y=conj(x);
Y=y*(exp(-1i*pi/100)).^(n'*k);

conjflip_X = conj(fliplr(X));
error = max(abs(Y-conjflip_X))