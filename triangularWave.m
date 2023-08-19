%%
function triangularWave(t, A, f)
A = 8/(pi*pi);
x = 0:0.1:1;
f = 1;
N = 100000;
fx = 0;

for n = 1:2:N
    fx = fx + A * ((-1)^((n-1)/2))/(n*n) * sin(2*pi*n*f*t);
end

plot(t,fx)