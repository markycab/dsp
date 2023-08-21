%DelRosario

function triangularwave (t,A,f)
A = 8/(pi*pi);   
t = 0:0.01:1;    
f = 5;           
N = 10000;      
px = 0;          

for n = 1:2:N
    px = px + A * (((-1)^((n-1)/2))/(n*n))*sin(2*pi*n*f*t);
end

plot(t, px);
xlabel('Time');
ylabel('Amplitude');
title('Approximated Triangle Wave');
grid on;
