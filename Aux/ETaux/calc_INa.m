% CALC_INA -- computes the fast sodium current.  
%
% INPUTS:
% V -- voltage.
% m -- activation gating variable (e.g. minf under QSSA).
% n -- potassium activation gating variable.
% g_Na -- maximal sodium current conductance.
% V_Na -- sodium reversal potential.
%
% OUTPUTS:
% INa -- value of the sodium current.

function INa = calc_INa(V,m,n,g_Na,V_Na)

INa = g_Na.*m.^3.*(1-n).*(V-V_Na);







