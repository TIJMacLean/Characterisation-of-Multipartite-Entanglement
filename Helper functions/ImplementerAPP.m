GABC = zeros(3,3);
GAB = zeros(3,3);
GAC = zeros(3,3);

for i = 1:3
    for j = 1:3
        GABC(i,j) = trace(sqrtm(rhoABC)*kron(sigma{i+1},eye(length(rhoABC)/2))*sqrtm(rhoABC)*kron(sigma{j+1},eye(length(rhoABC)/2)));
    end
end
U_ABC = real(1 - max(eig(GABC)));


for i = 1:3
    for j = 1:3
        GAB(i,j) = trace(sqrtm(rhoAB)*kron(sigma{i+1},eye(length(rhoAB)/2))*sqrtm(rhoAB)*kron(sigma{j+1},eye(length(rhoAB)/2)));
    end
end
U_AB = real(1 - max(eig(GAB)));


for i = 1:3
    for j = 1:3
        GAC(i,j) = trace(sqrtm(rhoAC)*kron(sigma{i+1},eye(length(rhoAC)/2))*sqrtm(rhoAC)*kron(sigma{j+1},eye(length(rhoAC)/2)));
    end
end
U_AC = real(1 - max(eig(GAC)));


Answer1 = U_ABC - U_AB - U_AC;