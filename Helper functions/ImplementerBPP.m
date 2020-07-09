GBAC = zeros(3,3);
GBA = zeros(3,3);
GBC = zeros(3,3);

for i = 1:3
    for j = 1:3
        GBAC(i,j) = trace(sqrtm(rhoABC)*kron(kron(eye(length(rhoABC)/4),sigma{i+1}),eye(length(rhoABC)/4))*sqrtm(rhoABC)*kron(kron(eye(length(rhoABC)/4),sigma{i+1}),eye(length(rhoABC)/4)));
    end
end
U_BAC = real(1 - max(eig(GBAC)));


for i = 1:3
    for j = 1:3
        GBA(i,j) = trace(sqrtm(rhoAB)*kron(eye(length(rhoAB)/2),sigma{i+1})*sqrtm(rhoAB)*kron(eye(length(rhoAB)/2),sigma{j+1}));
    end
end
U_BA = real(1 - max(eig(GBA)));


for i = 1:3
    for j = 1:3
        GBC(i,j) = trace(sqrtm(rhoBC)*kron(sigma{i+1},eye(length(rhoBC)/2))*sqrtm(rhoBC)*kron(sigma{j+1},eye(length(rhoBC)/2)));
    end
end
U_BC = real(1 - max(eig(GBC)));


Answer3 = U_BAC - U_BA - U_BC;