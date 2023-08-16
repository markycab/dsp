% Creates a plot of triangular wave
% t is input row vector in seconds
% A is scalar amplitude
% f is scalar frequency in hertz

function triangularWave(t, A, f)
% A = 8/(pi*pi);
% t = 0:0.01:1;
% f = 1;  % this is L
N = 100000;   % final N point
fx = 0;       % initialization

for n = 1:2:N      % odd increment
    fx = fx + A * (((-1)^((n-1)/2))/(n*n)) * sin(2*pi*n*f*t);
end

plot(t,fx);