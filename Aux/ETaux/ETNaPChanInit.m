function x = ETNaPChanInit(v, p)
% Steady state values for ET K current

x = calc_xinf(v, p.ET.theta_hNaP, p.ET.sigma_hNaP);
