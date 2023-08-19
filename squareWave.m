function squareWave(t, A, f)
 A = 4/pi;
 f = 1;
 t = 0:0.1:1;
N = 100000;
xt =0;

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end

plot(t,xt);