function Gout = SlowSynConduct(G, p, n)
Kd = p(8);
Gout = G.^n./(G.^n+Kd);
