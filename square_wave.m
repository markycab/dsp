%SANSON, Ralph Renz
%BS CpE 4
%DSP

function square_wave (A,f,t)

    A = 4/pi; %The amplitude
    f = 1; %Frequency in Hz
    t = 0:0.01:2; %time in seconds

    N = 1000; %iteration
    xt = 0; %the resulting waveform

    for k = 1:N
        xt = xt + A *sin(2*pi*(2*k-1)*f*t)/(2*k-1);
    end

plot(t, xt);
xlabel('Time in seconds');
ylabel('Amplitude');
