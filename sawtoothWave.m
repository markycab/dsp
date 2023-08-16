% sawtoothWave Creates a plot of sawtooth wave.
%   t is input row vector in seconds.
%   A is scalar amplitude.
%   f is scalar frequency in hertz.
% 
%   Example:
%     A = (1/2)-(1/pi);    
%     t = 0:0.01:2;        
%     f = 2; 
%     sawtoothWave(t, A, f)
%   You should see a sawtooth wave with 4 cycles in 2 seconds.


function sawtoothWave(t, A, f)
% A = (1/2)-(1/pi);    % y axis
% t = 0:0.01:2;        % x axis
% f = 1;               % 1 cycle of sawtooth
N = 100000; 
fx = 0;

for n = 1:N
    fx = fx + A * (1/n) * sin(2*pi*n*f*t);
end

plot(t,fx);

% t * f = no. of cycles in t
