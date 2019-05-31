function dH = DepressSyn(v, H, p)
% Differential change in level of synaptic depression.
%
%   USAGE: 
%   dH = DepressSynapse(v, H, p)
%
%   INPUTS:
%   v -- voltage
%   H -- synapse depression level
%   p -- (4,1) parameter vector of depression kinetics
%
%   OUTPUT:
%   Iinput -- synaptic input at time t
vHalf = p(1); kDepress = p(2); tHi = p(3); tLo = p(4);

sigH = 1.0/(1.0+exp((v-vHalf)/kDepress));
dH = (sigH - H)/(tHi + (tLo-tHi)*sigH);
        
