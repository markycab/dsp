n = 0:10000; h = 0.9.^n;
k = 0:500; w = (pi/500)*k;
%% H = 1/(1-0.9e^-jw)
H = h*(exp(-1i*(pi/500))).^(n'*k);

figure, subplot(1,2,1), plot(w*1/pi,abs(H)); grid
title('Magnitude');
subplot(1,2,2), plot(w*1/pi, angle(H)); grid
title('Phase');
