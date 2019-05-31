function dxdt = calc_xdot(V,x,theta,sigma,taubar)
% Compute the time derivative of gating variable x.
%
%   USAGE:
%   dxdt = calc_xdot(V,x,theta,sigma,taubar)
%
%
%   INPUTS:
%   V -- voltage
%   x -- gating variable value.
%   theta -- half-(in)activation parameter
%   sigma -- steepness at half-(in)activation parameter
%   taubar -- time constant parameter.
%
%   OUTPUT:
%   dxdt -- time derivative of x.

xinf = 1./(1+exp((V-theta)./sigma));
xtau = taubar./cosh((V-theta)./(2*sigma));

dxdt = (xinf-x)./xtau;

