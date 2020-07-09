function Unitary = GenerateUnitary(n)

A = rand(n) + 1i*rand(n);                                                  % Form random complex matrix
B = (A + ctranspose(A))/2;                                                 % Make Hermitian
Unitary = expm(1i*B);                                                      % Make Unitary