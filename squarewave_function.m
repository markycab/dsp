%TURNO,VIANELYN JAN R.
%DSP

function squarewave_function (A, f, t)

A = 4/pi;       % Amplitude
f = 3;          % Frequency in Hz
t = 0:0.01:1.5;   % Time
N = 20;         % Number of iterations
px = 0;         % Resulting waveform

for k = 1:N
    px = px + A * sin(2*pi*(2*k-1)*f*t) / (2*k-1);
end

plot(t, px);
xlabel('Time');
ylabel('Amplitude');
title('Approximated Square Wave');
grid on;
