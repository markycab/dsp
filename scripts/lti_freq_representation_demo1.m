n=0:10; x = exp(-1i*2*n);
m=0:3; h = [-1,2,1,-1];
k=0:500; w = (pi/500)*k;
w0 = 2;

y1 = conv_m(x,n,h,m);

H = h*(exp(-1i*w0)).^(m'*k);
y2 = H * x;

error = max(abs(y1-y2));