% CALC_TAUX -- computes the voltage-dependent time scale for a gating
% variable's kinetics.
%
% INPUTS:
% V -- voltage(s).
% theta -- half-activation parameter.
% sigma -- steepness at half-activation parameter.
% tau_bar -- parameter giving max time scale. 
% delta -- parameter of skewness
% OUTPUTS:
% tau -- value of tau.

function tau = calc_tauX2(V,theta,sigma,tau_bar,delta)

tau = 1.0 - tau_bar.*exp(delta*(V-theta)./sigma)./(1+exp((V-theta)./sigma));
