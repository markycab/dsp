close all
clear all
clc

%% Baraquia, Elace Kyla B.
%200938
%BS-BME-IV
%COE402

                                                                                            %% Homework 4%%
%{
To plot the magnitude and phase response of the given 3rd-order lowpass filter, you can calculate its frequency response using the Z-transform and then convert it to the frequency domain. The transfer function of the filter can be determined by taking the Z-transform of the difference equation. The Z-transform is a mathematical technique used to analyze discrete-time systems.
The Z-transform of a discrete-time signal x(n) is defined as X(z), and for the given difference equation:
%}

%% y(n) = 0.0181x(n) + 0.0543x(n − 1) + 0.0543x(n − 2) + 0.0181x(n − 3) + 1.76y(n − 1) − 1.1829y(n − 2) + 0.2781y(n − 3)%%

%{
Taking the Z-transform of both sides, to get:
Y(z) = 0.0181X(z) + 0.0543z^(-1)X(z) + 0.0543z^(-2)X(z) + 0.0181z^(-3)X(z) + 1.76z^(-1)Y(z) − 1.1829z^(-2)Y(z) + 0.2781z^(-3)Y(z)

y(n) = 0.0181x(n) + 0.0543x(n − 1) + 0.0543x(n − 2) + 0.0181x(n − 3) + 1.76y(n − 1) − 1.1829y(n − 2) + 0.2781y(n − 3)

Taking the Z-transform of both sides, to get:

Y(z) = 0.0181X(z) + 0.0543z^(-1)X(z) + 0.0543z^(-2)X(z) + 0.0181z^(-3)X(z) + 1.76z^(-1)Y(z) − 1.1829z^(-2)Y(z) + 0.2781z^(-3)Y(z)

Now, rearrange this equation to solve for the transfer function H(z) = Y(z)/X(z):

H(z) = Y(z)/X(z) = (0.0181 + 0.0543z^(-1) + 0.0543z^(-2) + 0.0181z^(-3)) / (1 - 1.76z^(-1) + 1.1829z^(-2) - 0.2781z^(-3))

This is the transfer function of the filter.

To visualize the magnitude and phase response of the filter, you can plot the frequency response by substituting z with the complex variable jω (where ω is the angular frequency in radians/second) and then calculate the magnitude and phase:
%}

%% In Matlab form%%

% Define the coefficients of the difference equation
b = [0.0181, 0.0543, 0.0543, 0.0181]; %numerator
a = [1, -1.76, 1.1829, -0.2781]; %denaminator

% Frequency response analysis
omega = linspace(0, pi, 1000); % Frequency range from 0 to pi
H = freqz(b, a, omega);

% Calculate magnitude and phase
magnitude = abs(H);
phase = angle(H);

% Convert frequency from radians/sample to Hz
fs = 1; % Sampling frequency (you can adjust it if needed)
frequencies_Hz = (omega / pi) * (fs / 2);

% Plot magnitude response
figure;
subplot(2, 1, 1);
plot(frequencies_Hz, 20 * log10(magnitude));
title('Magnitude Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;

% Plot phase response
subplot(2, 1, 2);
plot(frequencies_Hz, phase);
title('Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;

% Verify lowpass filter behavior
lowpass_cutoff_Hz = 0.2 * (fs / 2); % Define the cutoff frequency (adjust as needed)
hold on;
plot([lowpass_cutoff_Hz, lowpass_cutoff_Hz], [-pi, pi], 'm--', 'LineWidth', 2);
legend('Phase Response', 'Cutoff Frequency');
hold off;

% Adjust plot limits
subplot(2, 1, 1);
ylim([-60, 10]); % Adjust the vertical axis limits as needed

% Show grid on both subplots
grid on;

% Display the magnitude response at the cutoff frequency
cutoff_index = find(frequencies_Hz >= lowpass_cutoff_Hz, 1);
cutoff_magnitude_dB = 20 * log10(magnitude(cutoff_index));
fprintf('Magnitude response at cutoff frequency: %.2f dB\n', cutoff_magnitude_dB);

                                     
% Create a figure
figure;

% Subplot 1
subplot(2, 1, 1);
ylim([-60, 10]);
plot(frequencies_Hz, 20 * log10(magnitude)); 
title('SquareWave Signal');
hold on;
plot([lowpass_cutoff_Hz, lowpass_cutoff_Hz], [-pi, pi], 'm--', 'LineWidth', 2);
legend('Phase Response', 'Cutoff Frequency');
hold off;

% Subplot 2
subplot(2, 1, 2);
plot(frequencies_Hz, phase); 
title('Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;



%% 3.7 in Ingle and Proakis Book %%

%{
Define the range of n as -10 to 10, which is an appropriate range to visualize the convolution.

We initialize x1(n) with zeros and set it to 2 for n≥0

To compute the convolution of x1(n) with itself using the conv function with the 'same' option to get a result of the same length as 
​x1(n). Plot x1(n), x2(n) which is the same as x1(n) and the convolution of x1(n) with itself, and the convolution x1(n)∗x2(n)
​
 
​In this case, the convolution result will be a triangular waveform.
%}


% Define the signals
n = -10:10; % Define the range of n
x1 = zeros(size(n)); % Initialize x1(n) with zeros
x1(n >= 0) = 2; % Set x1(n) = 2 for n >= 0

% Compute the convolution using the Z-transform
convolution = conv(x1, x1, 'same'); % 'same' option for same length as x1

% Plot the original signals and the convolution
subplot(3, 1, 1);
stem(n, x1, 'b', 'filled');
title('x1(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(n, x1, 'r', 'filled');
title('x2(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(n, convolution, 'g', 'filled');
title('Convolution: x1(n) * x2(n)');
xlabel('n');
ylabel('Amplitude');

% Adjust plot layout
sgtitle('Convolution of x1(n) with itself');



%% 3.8 in Ingle and Proakis Book %%

%% Dispalyed in Command Window %%

fprintf('3.8 \n'); 

syms n z;

% Define x(n) as the convolution of two unit step functions
x_n = heaviside(n) * heaviside(n);

% Calculate the Z-transform of x(n)
X_z = ztrans(x_n, n, z);

% Express Y(n) as the sum of x(k) from -inf to n
Y_n = symsum(x_n, n, -inf, n);

% Calculate the Z-transform of Y(n)
Y_z = ztrans(Y_n, n, z);

% Display the results
disp('Z-transform of x(n) = (n + 1)u(n):');
pretty(X_z)

disp('Z-transform of Y(n) = ∑_{k=-∞}^{n} x(k):');
pretty(Y_z)

syms n z w0;


%% 3.9 in Ingle and Proakis Book %%

fprintf('3.9 \n'); 

% Define the signal x(n) with complex-conjugate zeros and poles
x_n = (z - exp(j*w0)) * (z - exp(-j*w0)) / ((z - 0.5*exp(j*w0)) * (z - 0.5*exp(-j*w0)));

% Compute the Z-transform X(z)
X_z = ztrans(x_n, n, z);

% Display the original X(z)
fprintf('Original X(z):\n');
pretty(X_z);

% Define the multiplication factor e^(j*w0*n)
multiplier = exp(j*w0*n);

% Multiply x(n) by e^(j*w0*n)
x_n_mult = x_n * multiplier;

% Compute the Z-transform X(z) after multiplication
X_z_mult = ztrans(x_n_mult, n, z);

% Display the modified X(z) after multiplication
fprintf('\nModified X(z) after multiplication:\n');
pretty(X_z_mult);

%% 3.10 in Ingle and Proakis Book %%

fprintf('3.10 \n' ); 

n = 0:1:1000; % Define a range of n values (adjust as needed)
X_n = mod(n, 2) == 0; % Define X(n) as 1 for even n, 0 for odd n

% Determine the limit of X(n) as n approaches infinity
X_infinity = X_n(end); % The last value in the sequence

fprintf('X(∞) = %d\n', X_infinity);


%% 3.11 in Ingle and Proakis Book %%


