 function N0 = PGKspChanInit(v)
 % Steady state values for PG spiking K current
    alphaN = 0.01 .* (v+55) ./ (1 - exp(-(v+55) ./ 10));
    betaN = 0.125 .* exp(-(v + 65) ./ 80);
    N0 = alphaN ./ (alphaN + betaN);
 
