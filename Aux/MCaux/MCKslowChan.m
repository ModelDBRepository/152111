function x = MCKslowChan(v, M, H)
%%% Kslow Channel (Wang XJ 1993) %%%

%tauM = 10;
infM = 1 ./ (exp(-(v+34)./6.5) + 1);
dM = (infM-M)/10;

tauH = 200 + 22 ./ (exp(-(v+71.6)./6.85) + 1); %orig 2000 + 220 ./ (exp(-(v+71.6)./6.85) + 1);
infH = 1 ./ (exp((v+65)./6.6) + 1);
dH = (infH-H)/tauH;

x = [dM dH];