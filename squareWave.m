function squareWave(t,A,f)
N = 5000; 
xt = 0;

for k = 1:N
    xt = xt + A * sin(2*pi*(2*k-1)*f*t)/(2*k-1);
end

plot(t,xt);

%copy to command window
%time = 0:0.01:4;
%ampli = 2;
%freq = 1;

%squareWave(time, ampli, freq)