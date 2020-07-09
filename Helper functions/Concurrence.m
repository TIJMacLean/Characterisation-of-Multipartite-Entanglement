function C = Concurrence(rho)

if length(rho) == 4
    sigma{3} = [0 -1i ; 1i 0];
    flipper = kron(sigma{3},sigma{3});
    rhoSF = flipper*conj(rho)*flipper;
    
    rhorhoSF = rho*rhoSF;
    eigs = sort(eig(rhorhoSF));
    sqrteigs = sqrt(eigs);
    
    conc = sqrteigs(4);
    for i = 1:3
        conc = conc - sqrteigs(i);
    end
    
    if conc > 0
        C = real(conc);
    else
        C = 0;
    end
else
    C = real(2*sqrt(det(TrX(rho,[2 3],[2 2 2]))));
end