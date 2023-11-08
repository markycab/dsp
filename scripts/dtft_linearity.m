x1=rand(1,11); x2=rand(1,11); n=0:10; % TD signals
alpha=2; beta=3; % constants
k=0:500; w=(pi/500)*k; % FD x-axis


X1=x1*(exp(-1i*pi/500)).^(n'*k); % dtft of x1
X2=x2*(exp(-1i*pi/500)).^(n'*k); % dtft of x2

x = alpha * x1 + beta * x2;
X = x*(exp(-1i*pi/500)).^(n'*k);

error = max(abs(X - (alpha * X1 + beta * X2)))
