function [x,n] = triangular(f, N, n1, n2)
% Generates a sawtooth wave sequence 
% x(n) = (8/pi^2) * sum((-1)^((n-1)/2)/n^2 sin(k*pi*f*n)); n1 <= n <= n2
% -------------------------------------------------
% f = frequency of the wave
% N = number of harmonics added
% n1 = sequence first sample
% n2 = sequence last sample
%
n = n1:n2;
x = zeros(1,length(n));

for k = 1:N
    x = x + (8/(pi*pi))*(((-1)^((k-1)/2))/(k*k)) * sin(pi*k*f*n);
end