function x = MCKfastChan(v, M, H)
%%% Kfast Channel (Bhala Bower 1993) %%%
rho = -8;
v = v - rho;

if v < -43
    tauM = 0.95889 + 5.6 * exp(v/39.38);
elseif v < -25
    tauM = 2.6597 + 0.5108 * exp(-2*((v+34.559)/14.031)^2);
elseif v < 32
    tauM = 0.117 + 3.2 / (exp((v+3.09)/13.61) + 1);
else
    tauM = 0.34;
end

infM = 1 ./ (exp(-(v+13.24)./10.46) + 1);
dM = (infM-M)/tauM;

%tauH = 50;
infH = 0.134 + 0.866 ./ (exp((v+6.525)./14) + 1);
dH = (infH-H)/50;

x = [dM dH];