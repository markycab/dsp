%DelRosario

function sawtoothwave(t, A, f)
A = (1/2) - (1/pi);
t = 0:0.01:5;
f = 2;
N = 10000;
px = 0;

for n = 1:N
    px = px + A * (1/n) * sin(2*pi*n*f*t);
end

plot(t, px);
xlabel('Time');
ylabel('Amplitude');
title('Sawtooth Signal');
grid on;
