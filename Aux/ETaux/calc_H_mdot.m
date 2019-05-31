function dxdt = calc_H_mdot(V,x,p)
% Computes the time derivative of gating variable m for H current.
% 
%   USAGE:
%   dxdt = calc_H_mdot(V,x,p)
%
%   INPUTS:
%   V -- voltage
%   x -- gating variable value.
%   p(1) theta -- half-(in)activation parameter
%   p(2) sigma -- steepness 
%   p(3) theta2 -- half-(in)activation parameter primed
%   p(4) sigma2 -- steepness primed
%   p(5) taubar -- time constant parameter.
%   p(6) delta -- skewness
%
%   OUTPUT:
%   dxdt -- time derivative of x.

theta = p(1); sigma = p(2);
xinf = 1./(1+exp((V-theta)./sigma));

theta = p(3); sigma = p(4); taubar = p(5); delta = p(6);
xtau = taubar.*exp(delta*(V-theta)./sigma) ./ (1+exp((V-theta)./sigma));
dxdt = (xinf-x)./xtau;