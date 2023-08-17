%Sawtooth wave

function SawtoothWave(A, f, t)
% A = (1/2) - (1/pi);
% f = 1;
% t = 0:0.01:3;
N = 10000;
fx = 0;

for n = 1:N
    fx = fx + A * (1/n) *sin(2*pi*n*f*t);
end

plot (t, fx, 'g');
