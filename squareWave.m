function squareWave(t,A,f) %t,A,f will be comment out.
% A = 4/pi; %Amplitude
% f = 1; %Frequency in Hz
% t = 0:0.01:1; %time reference in seconds
N = 2000; %number of iteration %% if n is higher, more square it is
xt = 0; %resulting waveform (square wave)

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);

end

plot(t,xt);