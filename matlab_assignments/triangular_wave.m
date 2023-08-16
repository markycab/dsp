function triangular_wave(period, amplitude, num_cycles)
    % period: the period of the triangular wave
    % amplitude: the amplitude of the triangular wave
    % num_cycles: the number of cycles to plot
    
    t = linspace(0, num_cycles * period, 1000);
    wave = amplitude * sawtooth(2 * pi * t / period, 0.5);
    
    plot(t, wave);
    grid on;
end