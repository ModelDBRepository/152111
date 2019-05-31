function x = MCKaChanInit(v)
% Steady state values for MC Na current

M0 = 1 ./ (exp(-(v-70)./14) + 1);
H0 = 1 ./ (exp((v+47.4)./6) + 1);

x = [M0, H0];