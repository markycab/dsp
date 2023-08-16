%Assignment Sawtooth_wave Hayudini

function Hayudini_sawtooth_wave(x, A, f)

N = 100000; 
fx = 0;
% A = (1/2) - (1/pi)
% f = 1
% 0:0.01:1

for n = 1:N
    fx = fx + A * ((1)/(n))*sin(2*n*pi*f*x); 
end 

plot(x, fx); 


%1. input in the command window example: Hayudini_sawtooth_wave(0:0.01:2, 2, 2)
%2. input in the command window example: Hayudini_sawtooth_wave(0:0.01:2, (1/2) - (1/pi), 2)