function minf = PGMVarInf(v)
minf = 0.1 .* (v + 40) ./ (0.1 .* (v + 40) + 4 .* exp(-(v + 65) ./ 18) .* (1 - exp(-(v + 40) ./ 10)));