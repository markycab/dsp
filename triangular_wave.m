%SANSON, Ralph Renz
%BS CpE 4
%DSP

function triangular_wave(A, t, f)

    A = 8/(pi*pi); %scalar amplitude
    t = 0:0.01:1;
    f = 2;
    N = 10000;
    fx = 0;

    for n = 1:2:N
        fx = fx + A * (-1)^((n-1)/2)/(n*n)* sin(2*pi*n*f*t);
    end

    plot(t, fx , 'r');
    xlabel("Time in seconds");
    ylabel('Amplitude');

