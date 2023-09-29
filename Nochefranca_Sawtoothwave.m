function sawtoothWave(t, a, f)
% t = 0:0.01:5;
% a = (1/2)-(1/pi);
% f = 2;
N = 100000;
fx = 0;

for n = 1:N
    fx = fx + a * (1/n) * sin(2*pi*n*f*t);
end

plot(t,fx);