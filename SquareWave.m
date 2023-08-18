function SquareWave (t,A,f)
% A = 4/pi; % the amplitude
% f = 1; % the frequency in hertz
% t = 0:0.01:1; % the time reference in seconds

N = 100000;
xt = 0; % the resulting waveform

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end

plot(t, xt);
