 function x = MCNaChanInit(v)
 % Steady state values for MC Na current
 alphaM = 0.32 .* expM(-(v+50), 4);
 betaM = 0.28 .* expM(v+23, 5);
 M0 = alphaM ./ (alphaM + betaM);
 
 alphaH = 0.128 ./ exp((v+46)./18);
 betaH = 4 ./ (1 + exp(-(v+23)./5));
 H0 = alphaH ./ (alphaH + betaH);
 
 x = [M0, H0];