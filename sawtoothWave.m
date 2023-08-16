function sawtoothWave(t, A, f)
N = 420;
fx = 0;

for n = 1:N
    fx = fx + A * (1/n) * sin(2*pi*n*f*t);
end

plot(t,fx);