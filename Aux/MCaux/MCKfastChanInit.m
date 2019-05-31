function x = MCKfastChanInit(v)
rho = -8;
v = v - rho;

M0 = 1 ./ (exp(-(v+13.24)./10.46) + 1);

H0 = 0.134 + 0.866 ./ (exp((v+6.525)./14) + 1);

x = [M0, H0];