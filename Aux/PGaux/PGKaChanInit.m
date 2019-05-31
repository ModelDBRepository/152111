 function x = PGKaChanInit(v)
 % Steady state values for PG Ka current
 M0 = 1 ./ (1+exp((-47.1-v) ./ 13.1));
 H0 = 1 ./ (1+exp((v+67.3) ./ 6.3));
 
 x = [M0, H0];