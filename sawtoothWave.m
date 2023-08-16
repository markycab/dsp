function sawtoothWave(t, A, f)
N = 100;
fx = 0;

for n = 1:N
    fx = fx + A * (1/n) * sin(2*pi*n*f*t);
end

plot(t,fx);

%copy this to command window to run
%A = (1/2)-(1/pi);
%t = 0:0.01:5;
%f = 2;
%sawtoothWave(t, A, f)