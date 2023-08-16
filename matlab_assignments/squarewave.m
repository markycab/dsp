function squareWave(t,A,f)
 xt = 0;
 N = 1000;

for k = 1:N 
    xt = xt + A * sin (2 * pi * (2*k-1) * t * f)/(2*k-1);
end

plot(t,xt)