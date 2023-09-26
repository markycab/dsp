% continuous signal parameters
t = 0:0.001:1; % Time vector with high resolution
xa = cos(20 * pi * t); % Analog signal

% sampling intervals (Ts values)
Ts_values = [0.01, 0.05, 0.1];

% cell array to store the sampled signals
sampled_signals = cell(length(Ts_values), 1);

% Sample the signal for each Ts
for i = 1:length(Ts_values)
    Ts = Ts_values(i); % Current sampling interval
    
    % Sample the signal at discrete time points
    n = 0:Ts:1;
    xn = cos(20 * pi * n); % Sampled signal
    
    % Store the sampled signal in the cell array
    sampled_signals{i} = xn;
    
    % Plot the sampled signal
    figure;
    stem(n, xn, 'r', 'MarkerFaceColor', 'r');
    title(['Sampled Signal x(n) for Ts = ' num2str(Ts)]);
    xlabel('n');
    ylabel('x(n)');
    grid on;
end