%%
function sawtoothWave(t, A, f)
A = ((1/2)-(1/pi));
t = 0:0.1:1;
f = 1;
N = 100000;
xt = 0;

for n = 1:N;
    xt = xt + A* (1/n) * sin(2*pi*n*f*t);
end

plot (t,xt)