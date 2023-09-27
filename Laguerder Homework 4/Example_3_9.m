% Keefe Gareth B. Laguerder
% Homework 4
% Example 3.9

n = 0:100;
x = cos(pi*n/2);

k = -100:100;
w = (pi/100) * k; % frequency between -pi and pi
X = x * (exp(-1j*pi/100)).^(n'*k); % DTFT of x

y = exp(1j*pi*n/4).*x; % signal multiplied by exp(jpin/4)
Y = y * (exp(-1j*pi/100)).^(n'*k); % DTFT of y

% Plotting
subplot(2,2,1);plot(w/pi, abs(X));grid;
axis([-1, 1, 0, 60]);
xlabel('frequency in pi');
ylabel('|X|');
title('Magnitude of X');

subplot(2,2,2);plot(w/pi, angle(X)/pi);grid;
axis([-1, 1, -1, 1]);
xlabel('Frequency in pi');
ylabel('radians/pi');
title('Angle of X');

subplot(2,2,3);plot(w/pi, abs(Y));grid;
axis([-1, 1, 0, 60]);
xlabel('Frequency in pi');
ylabel('|Y|');
title('Magnitude of Y');

subplot(2,2,4);plot(w/pi, angle(Y)/pi);grid;
axis([-1, 1, -1, 1]);
xlabel('Frequency in pi');
ylabel('radians/pi');
title('Angle of Y');