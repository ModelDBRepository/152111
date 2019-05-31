function x = ETKChanInit(v, p)
% Steady state values for ET K current

x = calc_xinf(v, p.ET.theta_nK, p.ET.sigma_nK);
