function E = sigenergy(x)
% Computes for the energy of an energy signal.
% ----------------------------------------------
% E = sigenergy(x)
% 
E  = sum(abs(x).^2);
end