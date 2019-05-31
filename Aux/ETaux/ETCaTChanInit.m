function x = ETCaTChanInit(v, p)
% Steady state values for ET K current

M0 = calc_xinf(v, p.ET.theta_mCaT, p.ET.sigma_mCaT);
H0 = calc_xinf(v, p.ET.theta_hCaT, p.ET.sigma_hCaT);

x = [M0, H0];

