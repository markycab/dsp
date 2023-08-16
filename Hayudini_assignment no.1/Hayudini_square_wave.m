%Assignment Squarewave Hayudini

function Hayudini_square_wave(t, A, f)
%A = 4/pi; %amplitude
%f = 1; % frequency in herts
%t = 0:0.01:f; %time reference in seconds
N = 100000; %number of iterations
xt = 0; %resulting waveform (sqaure waves)

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end 

plot(t, xt); 