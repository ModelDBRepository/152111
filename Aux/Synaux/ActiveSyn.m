function dH = ActiveSyn(vpost, vpre, H, p)
% Differential change in level of synaptic activation for standard synapse.
%
%   USAGE: 
%   dH = ActiveSyn(vpost, vpre, H, p)
%
%   INPUTS:
%   vpost -- postsynaptic membrane voltage
%   vpre -- presynaptic membrane voltage
%   H -- vector of processed ORN input signal
%   p -- (4,1) parameter vector of depression kinetics
%
%   OUTPUT:
%   Iinput -- synaptic input at time t
vHalf = p(1); k = p(2); alpha = p(3); beta = p(4);

Tinf = 1.0/(1.0+exp(-(vpre-vHalf)/k));
dH = alpha*Tinf*(1-H) - beta*H;