function sawtooth_wave(amplitude, time, frequency)
    %amplitude = amplitude of the wave
    %time = time interval of the wave
    %frequency = frequency of the wave
    
    formula = 2*pi*frequency;
    wave = amplitude * sawtooth(formula * time);
    plot(time, wave);
    end
    