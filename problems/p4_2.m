%% 
% To verify the X_z signal, we get the impulse response of X_z 
% using the filter function and compare it to the original x_n
% sequence

% Plotting only the first 8 samples

b = [0 0 0.64]; a=[1 -0.8]; %% coefficients of z-transform (X_z)
[delta, n]=impseq(0,0,7); %% getting a sample imp response

x1 = filter(b,a,delta);  %% getting x_n via filter function
x2 = [(0.8).^n] .* stepseq(2,0,7); %% plotting the original signal

diff = abs(max(x1 - x2));