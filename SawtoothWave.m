function SawtoothWave (t,A,f)
% A = (1/2)-(1/pi) ; % the scalar amplitude
% f = 1; % the scalar frequwncy in hertz
% t = 0:0.01:1; % the row vector input per seconds

N = 100000;
xt = 0;

for n = 1:N
    xt = xt + A * (1/n) * sin(2*pi*n*f*t);
end

plot(t,xt)