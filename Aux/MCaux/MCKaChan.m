function x = MCKaChan(v, M, H)
% Ka Channel (Wang, McKenzie 1996)
tauM = 25 .* exp((v+45)./13.3) ./ (exp((v+45)./10) + 1);
infM = 1 ./ (exp(-(v-70)./14) + 1);
dM = (infM - M) / tauM;

tauH = 55.5 .* exp((v+70)./5.1) ./ (exp((v+70)./5) + 1);
infH = 1 ./ (exp((v+47.4)./6) + 1);
dH = (infH - H) / tauH;

x = [dM dH];