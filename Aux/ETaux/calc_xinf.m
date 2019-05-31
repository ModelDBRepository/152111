function xinf = calc_xinf(V,theta,sigma)
%Compute the steady state value of a gating variable.
%
%   USAGE:
%   xinf = calc_xinf(V,theta,sigma)
%
%   INPUTS:
%   V -- voltage value(s).
%   theta -- half-activation parameter.
%   sigma -- steepness at half-activation parameter
%
%   OUTPUTS:
%   xinf -- steady state values.

xinf = 1./(1+exp((V-theta)./sigma));
