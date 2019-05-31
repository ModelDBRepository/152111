function H = DepressSynInit(v, vHalf, kDepress)
H = 1.0/(1.0+exp((v-vHalf)/kDepress));