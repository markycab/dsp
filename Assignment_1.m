close all
clc
clear all
                                                                    
%Baraquia,Elace Kyla
                                     %% 1. Squarewave signal %%

% Define parameters square wave signal
frequency = 10; % Frequency of the square wave (in Hz)
amplitude = 1; % Amplitude of the square wave
sampling_rate = 1000; % Sampling rate (in Hz)
duration = 1; % Duration of the signal (in seconds)

% Generate time vector
t = 0:1/sampling_rate:duration-1/sampling_rate;

% Generate square wave signal
square_wave = amplitude * square(2 * pi * frequency * t);

% Plot the square wave signal
figure;
plot(t, square_wave);
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Wave Signal');
ylim([-1.5 1.5]); % Set y-axis limits to visualize the square wave
grid on;

                                        %% 2. Triangularwave signal %%

% Define parameters
frq = 5; % Frequency of the triangular wave (in Hz)
amp = 1; % Amplitude of the triangular wave
sampl_rate = 1000; % Sampling rate (in Hz)
duration = 1; % Duration of the signal (in seconds)

% Generate time vector
tim = 0:1/sampl_rate:duration-1/sampl_rate;

% Generate triangular wave signal
triangular_wave = amp * sawtooth(2 * pi * frq * tim, 0.5);

% Plot the triangular wave signal
figure;
plot(tim, triangular_wave);
xlabel('Time (s)');
ylabel('Amplitude');
title('Triangular Wave Signal');
grid on;



                                      %% 3. Sawtooth signal %%

%Define Parameter sawtooth signal
freq = 1;        % Frequency of the sawtooth signal (Hz)
drn = 2;         % Duration of the signal (seconds)
samp_rt = 1000; % Sampling rate (samples per second)

% Time vector
tm = 0:1/samp_rt:drn-1/samp_rt;

% Generate sawtooth signal
sawtooth_signal = sawtooth(2*pi*freq*tm);

% Plot the signal
figure;
plot(tm, sawtooth_signal);
title('Sawtooth Signal');
xlabel('Time (s)');
ylabel('Amplitude');


                                     
% Create a figure
figure;

% Subplot 1
subplot(3,1,1);
plot(t, square_wave); 
title('SquareWave Signal');

% Subplot 2
subplot(3,1,2);
plot(tim, triangular_wave); 
title('TriangularWave Signal');

% Subplot 3
subplot(3,1,3);
plot(tm, sawtooth_signal); 
title('Sawtooth Signal');



