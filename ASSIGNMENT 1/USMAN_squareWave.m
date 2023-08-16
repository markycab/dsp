function USMAN_squareWave (t,A,f)
N = 100000; 
xt = 0;

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end

plot(t,xt);