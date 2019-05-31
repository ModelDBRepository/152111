function x = PGKaChan(v, M, H)
% PG Ka channel, Belluzi and Puopolo (200x)

PG_mKainf = 1 ./ (1+exp((-47.1-v) ./ 13.1));
PG_mKatau = 0.04 .* exp(-v/20.3) + 0.2;
dM = (PG_mKainf - M) ./ PG_mKatau;

%dPG_hKa:
PG_hKainf = 1 ./ (1+exp((v+67.3) ./ 6.3));
%PG_hKatau = 12; %[ish]
dH = (PG_hKainf - H) ./ 12;
x = [dM dH];