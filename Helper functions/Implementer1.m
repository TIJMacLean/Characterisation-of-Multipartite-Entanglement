Diagonal = zeros(8,8);
Diagonal(1,1) = 1;                                                         % Form eigenvalues matrix
Unitary = GenerateUnitary(8);
rhoABC = Unitary*Diagonal*ctranspose(Unitary);                             % Create density matrix
% rhoABC = kron(kron([0.5 0.2 ; 0.2 0.5],[0.75 1 ; 1 0.25]),[0.1 2 ; 2 0.9])
% rhoABC = zeros(8,8);
% rhoABC(1,1) = 1/2;
% rhoABC(8,1) = 1/2;
% rhoABC(1,8) = 1/2;
% rhoABC(8,8) = 1/2

rhoA = TrX(rhoABC,[2 3],[2,2,2]);
rhoB = TrX(rhoABC,[1 3],[2,2,2]);
rhoC = TrX(rhoABC,[1 2],[2,2,2]);
rhoAB = TrX(rhoABC,3,[2 2 2]);
rhoBC = TrX(rhoABC,1,[2 2 2]);
rhoAC = TrX(rhoABC,2,[2 2 2]);
rhoBAC = kron(rhoB,rhoAC);
rhoBA = TrX(rhoBAC,3,[2 2 2]);

sigma{1} = [1 0 ; 0 1];
sigma{2} = [0 1 ; 1 0];
sigma{3} = [0 -1i ; 1i 0];
sigma{4} = [1 0 ; 0 -1];