% CALC_ICAT -- function which calculates the value of the T type calciuim
% current.
%
% INPUTS:
% V -- voltage value(s).
% m -- CaT activation gating variable.
% h -- CaT inactivation gating variable.
% g -- CaT conductance.
% VCa -- reversal potential.
% 
% OUTPUTS:
% ICaT -- value of the CaT current.

function ICaT = calc_ICaT(V,m,h,g,VCa)

ICaT = g.*m.^2.*h.*(V-VCa);




