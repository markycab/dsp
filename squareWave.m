function squareWave(t,A,f)                  % takes time, amplitude, and frequency input.
% A = 4/pi;          % amplitude
% f = 1;             % frequency in hertz
% t = 0:0.01:1;      % time reference in seconds
N = 20;              % number of iterations
xt = 0;              % resulting waveform (square wave)
for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end

plot(t,xt); 

% this generates square wave

% for this to become a perfect squarewave we need to make it to infinity.
