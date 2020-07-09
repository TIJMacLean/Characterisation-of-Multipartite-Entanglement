function sq = sqrtNN(rho)

[V D] = eig(rho);
for i = 1:length(eig(rho))
    D(i,i) = -1*sqrt(D(i,i));
end

sq = V*D/V;