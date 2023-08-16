%Assignment Triangular_wave Hayudini

function Hayudini_triangular_wave(x, A, f)

N = 100000; 
fx = 0;
% A = 8/(pi*pi)
% f = 1
% 0:0.01:1

for n = 1:2:N
    fx = fx + A * (((-1)^((n-1)/2))/(n*n))*sin(2*n*pi*f*x); 
end 

plot(x, fx); 