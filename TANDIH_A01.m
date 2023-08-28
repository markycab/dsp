
% Tandih, Ciara May A.
% 200771
% A01

close all
clc

% Time values
T = linspace(0, 1, 1000); 

% Square Signal
square_sig = square(2*pi*5*T); 
subplot(3, 1, 1);
plot(T, square_sig); xlabel('Time'); ylabel('Amplitude'); title('Square Signal');

% Triangular Signal
tria_sig = sawtooth(2*pi*5*T, 0.5); 
subplot(3, 1, 2);
plot(T, tria_sig); xlabel('Time'); ylabel('Amplitude'); title('Triangular Signal');

% Sawtooth Signal
sawt_sig = sawtooth(2*pi*5*T); 
subplot(3, 1, 3);
plot(T, sawt_sig); xlabel('Time'); ylabel('Amplitude'); title('Sawtooth Signal');

sgtitle('Different Waveforms');