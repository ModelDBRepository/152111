
% CALC_CAX_MDOT -- function which computes the time derivative of gating
% variable h for CaX current.
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

function dxdt = calc_CaX_mdot(V,x,p)
theta = p(1); sigma = p(2); 
xinf = calc_xinf(V,theta,sigma);

theta = p(3); sigma = p(4); taubar = p(5); delta = p(6);
xtau = 1000*calc_tauX(V,theta, sigma, taubar, delta);
dxdt = (xinf-x)./xtau;