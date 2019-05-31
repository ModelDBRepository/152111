% CALC_H_MDOT2 -- function which computes the time derivative of gating
% variable m for H current.
%
% INPUTS:
% V -- voltage
% x -- gating variable value.
% theta -- half-(in)activation parameter
% sigma -- steepness 
% taubar -- time constant parameter.
% delta -- skewness
%
% dxdt -- time derivative of x.

function dxdt = calc_H_mdot2(V,x,p)
theta = p(1); sigma = p(2);
xinf = calc_xinf(V,theta,sigma);

theta = p(3); sigma = p(4); taubar = p(5);
xtau = 1000*calc_tau(V,theta, sigma, taubar); 
dxdt = (xinf-x)./xtau;