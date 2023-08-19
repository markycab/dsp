function [x,n] = squarewave(f, N, n1, n2)
% Generates a sawtooth wave sequence 
% x(n) = 4/pi sum(sin(2*pi*(2k-1)*f*n)/(2k-1)); n1 <= n <= n2
% -------------------------------------------------
% f = frequency of the wave
% N = number of harmonics added
% n1 = sequence first sample
% n2 = sequence last sample
%
n = n1:n2;
x = zeros(1,length(n));

for k = 1:N 
    x = x + (4/pi) * sin (2 * pi * (2*k-1) * n * f)/(2*k-1);
end