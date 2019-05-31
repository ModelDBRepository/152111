function x = MCNaChan(v, M, H) 
% Na Channel (Bhala Bower 1993)
alphaM = 0.32 .* (v+50) ./ (1 - exp(-(v+50)/4));
betaM = 0.28 .* (v+23) ./ (exp((v+23)/5) - 1);
dM = alphaM * (1 - M) - betaM * M;


alphaH = 0.128 ./ exp((v+46)./18);
betaH = 4 ./ (1 + exp(-(v+23)./5));
dH = alphaH * (1 - H) - betaH * H;

x = [dM dH];