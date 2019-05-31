function x = ETHChanInit(v, p)
% Steady state values for ET H current

x = 1./(1+exp((v-p.ET.theta_mH)./p.ET.sigma_mH));

