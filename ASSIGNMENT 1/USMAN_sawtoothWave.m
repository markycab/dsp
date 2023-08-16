function USMAN_sawtoothWave (t,A,f)
N = 100000; 
sx = 0;

for n = 1:N
    sx = sx + A * (1/n)*sin(2*pi*n*f*t);
    
end

plot(t,sx);