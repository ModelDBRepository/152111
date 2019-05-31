function x = MCKslowChanInit(v)
M0 = 1 ./ (exp(-(v+34)./6.5) + 1);

H0 = 1 ./ (exp((v+65)./6.6) + 1);

x = [M0, H0];