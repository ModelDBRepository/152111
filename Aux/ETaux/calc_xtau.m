function tau = calc_tau(V,theta,sigma,taubar)
% Compute the voltage-dependent time scale for gating variable
%
%   USAGE: 
%   tau = calc_xtau(V,theta,sigma,taubar)
%
%   INPUTS:
%   V -- voltage(s).
%   theta -- half-activation parameter.
%   sigma -- steepness at half-activation parameter.
%   taubar -- parameter giving max time scale. 
%
%   OUTPUTS:
%   tau -- value of tau.

tau = taubar./cosh((V-theta)./(2*sigma));







