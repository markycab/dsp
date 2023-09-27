% % % % % % % % % % % % %
% Tandih, Ciara May A.  %
%       200771          %
%      BSBME-IV         %
%     HOMEWORK 4        %
% % % % % % % % % % % % %


close all
clc

% 
A = [0.0181, 0.0543, 0.0543, 0.0181];
B = [1, -1.76, 1.1829, -0.2781];

% 
Freq= 1000; 
S = 1024; 

% 
[H, w] = freqz(A, B, S);

% frequency to Hz
freqz_Hz = (w / (2*pi)) * Freq;

% magnitude and phase
Magnitude = abs(H);
Phase = angle(H);

% 
figure;
subplot(2, 1, 1);
plot(freqz_Hz, 20*log10(Magnitude)); xlabel('Frequency (Hz)'); ylabel('Magnitude (dB)');
title('Magnitude Response');
grid on;

% 
subplot(2, 1, 2);
plot(freqz_Hz, Phase); xlabel('Frequency (Hz)'); ylabel('Phase (radians)');
title('Phase Response');
grid on;

% 
lowpass_filter = 100; 
hold on;
plot([lowpass_filter, lowpass_filter], [-pi, pi], 'r--', 'LineWidth', 2);
legend('Phase Response', 'Cutoff Frequency');
hold off;

% 
subplot(2, 1, 1);
ylim([-60, 10]); % Adjust the vertical axis limits as needed

% 
grid on;

% 
cutoff_index = find(freqz_Hz >= lowpass_filter, 1);
cutoff_magnitude_dB = 20*log10(magnitude(cutoff_index));
fprintf('Magnitude response at cutoff frequency: %.2f dB\n', cutoff_magnitude_dB);


