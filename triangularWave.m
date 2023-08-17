function triangularWave(x, A ,f)
% A = 8/(pipi);
% x = 0:0.01:1;
% f = 1;
N = 10000;
fx = 0;

for n = 1:2:N
    fx = fx + A *(-1)^((n-1)/2)/(n*n) *sin(2*pi*n*f*x);
end

plot(x,fx);