%TURNO,VIANELYN JAN R.
%DSP

function triangularwave (t,A,f)
A = 8/(pi*pi);   % Scalar amplitude
t = 0:0.01:1;    % Input time vector in seconds
f = 5;           % Scalar frequency in Hz
N = 10000;       % Number of iterations
px = 0;          % Resulting waveform

for n = 1:2:N
    px = px + A * (((-1)^((n-1)/2))/(n*n))*sin(2*pi*n*f*t);
end

plot(t, px);
xlabel('Time');
ylabel('Amplitude');
title('Approximated Triangle Wave');
grid on;
