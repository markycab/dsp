%DelRosario

function squarewave (A, f, t)

A = 4/pi;      
f = 3;        
t = 0:0.01:1.5;  
P = 20;        
px = 0;         

for k = 1:P
    px = px + A * sin(2*pi*(2*k-1)*f*t) / (2*k-1);
end

plot(t, px);
xlabel('Time');
ylabel('Amplitude');
title('Approximated Square Wave');
grid on;
