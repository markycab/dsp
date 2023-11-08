N=6; k = 1;
n = 0:N-1;
x = 0.5.^n;
X = x.*exp(-j*2*pi/N*k*n); %#ok<IJCL>
X1 = sum(X);
mag = abs(X1); phase = (180/pi)*angle(X1);

fprintf('Magnitude: %f, Phase = %f\n', mag, phase);

