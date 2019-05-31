function M = MCNaPChan(v)
%%% NaP Channel (Wang XJ 1993) %%%
M = 1 ./ (exp(-(v+51)./5) + 1);
