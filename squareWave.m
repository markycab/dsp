%%Ibanez, Cedric Jim J.
%function squareWave(t, A, f)

A = 4/pi; % amplitude
f = 1; % frequency
t = 0:0.01:1; 
N = 20; % number of iterations
xt = 0;

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
  
end

plot(t, xt);