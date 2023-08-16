function triangularWave(t, A ,f)
N = 49;
fx = 0;

for n = 1:2:N
    fx = fx + A * (-1)^((n-1)/2)/(n*n) * sin(2*pi*n*f*t);
end

plot(t,fx);