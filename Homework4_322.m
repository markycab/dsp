% Define the analog signal parameters
t = 0:0.001:1; % Continuous time vector
Ts = 0.05; % Sampling interval
n = 0:Ts:1; % Discrete time vector for sampling

% Values of θ to consider
theta_values = [0, pi/6, pi/4, pi/3, pi/2];

for i = 1:length(theta_values)
    % Define the analog signal xa(t) with the current θ
    theta = theta_values(i);
    xa = cos(20 * pi * t + theta);

    % Sample the analog signal to obtain x(n)
    xn = cos(20 * pi * n + theta);

    % Reconstruct the analog signal ya(t) using sinc interpolation
    delta_t = 0.001;
    t_reconstructed = 0:delta_t:1;
    ya_sinc = zeros(size(t_reconstructed));

    for j = 1:length(n)
        ya_sinc = ya_sinc + xn(j) * sinc((t_reconstructed - n(j)) / Ts);
    end

    % Reconstruct the analog signal ya(t) using cubic spline interpolation
    ya_cubic_spline = interp1(n, xn, t_reconstructed, 'spline');

    % Plot xa(t), superimpose x(n), and reconstructed signals
    figure;
    plot(t, xa, 'b', 'LineWidth', 1.5);
    hold on;
    stem(n, xn, 'or', 'MarkerFaceColor', 'r', 'MarkerSize', 5);
    plot(t_reconstructed, ya_sinc, 'g', 'LineWidth', 1.5);
    plot(t_reconstructed, ya_cubic_spline, 'm', 'LineWidth', 1.5);
    title(['θ = ' num2str(theta)]);
    legend('xa(t)', 'x(n)', 'ya(t) (Sinc)', 'ya(t) (Cubic Spline)');
    xlabel('t');
    ylabel('Amplitude');
    grid on;
end