function dH = SlowSyn(vpre, H, p)
% Differential change in level of synaptic activation for standard synapse.
%
%   USAGE: 
%   dH = SlowSyn(vpost, vpre, H, p)
%
%   INPUTS:
%   vpost -- postsynaptic membrane voltage
%   vpre -- presynaptic membrane voltage
%   H -- vector of synaptic activation levels
%     -- H(1) = R, H(2) = G
%   p -- (7,1) vector of synapse parameters
%
%   OUTPUT:
%   Iinput -- synaptic input at time t
dH = zeros(2,1); R = H(1); G = H(2);

vHalf = p(1); k0 = p(2); Tmax = p(3); % Almost identical to active syn
k1 = p(4); k2 = p(5); % New for slow syn
k3 = p(6); k4 = p(7);


Tinf = min(0.5,Tmax/(1.0+exp(-(vpre-vHalf)/k0)));
dH(1) = k1*Tinf*(1-R) - k2*R;
dH(2) = k3*R - k4*G;

