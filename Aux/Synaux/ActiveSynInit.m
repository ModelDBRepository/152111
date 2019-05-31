function A = ActiveSynInit(vpre, vHalf, k, alpha, beta)
Tinf = 1.0/(1.0+exp(-(vpre-vHalf)/k));
A = alpha * Tinf ./ (alpha* Tinf + beta);