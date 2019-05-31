function x = PGKspChan(v, PG_N)
% PG spiking K channel (Moehlis 2007)

alphaN = 0.01 .* (v+55) ./ (1 - exp(-(v+55) ./ 10));
betaN = 0.125 .* exp(-(v + 65) ./ 80);

x = alphaN .* (1 - PG_N) - betaN .* PG_N;