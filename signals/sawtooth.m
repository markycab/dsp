function [x,n] = sawtooth(f, N, n1, n2)
% Generates a sawtooth wave sequence 
% x(n) = 1/2 - (1/pi) * sum(1/n sin(k*pi*f*n)); n1 <= n <= n2
% -------------------------------------------------
% f = frequency of the wave
% N = number of harmonics added
% n1 = sequence first sample
% n2 = sequence last sample
%

n = n1:n2; 
x = zeros(1,length(n));

for k = 1:N
    x = x + (1/(pi*k)) * sin (pi*n*k*f);
end

x = 1/2 - x;