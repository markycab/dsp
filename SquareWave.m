A = 4/pi; %amplitude
f = 1; %frequency in hertz
t = 0:0.01:1; %time reference in seconds
N = 500000; %number of iterations
xt = 0; %resulting waveform (square wave)

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end

plot(t,xt);