function dN = PGNVar(v, N)
%alphaN = 0.01 .* expM(-(v+55), 10);
alphaN = 0.01 .* (v+55) ./ (1 - exp(-(v+55) ./ 10));

betaN = 0.125 .* exp(-(v + 65) ./ 80);

dN = alphaN .* (1 - N) - betaN .* N;