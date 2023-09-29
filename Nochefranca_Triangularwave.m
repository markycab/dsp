function triangularWave(x, a ,f)
% x = 0:0.01:1;
% a = 8/(pipi);
% f = 1;
N = 10000;
fx = 0;

for n = 1:2:N
    fx = fx + a *(-1)^((n-1)/2)/(n*n) *sin(2*pi*n*f*x);
end

plot(x,fx);