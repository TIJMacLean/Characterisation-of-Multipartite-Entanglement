GABC = zeros(3,3);
GCA = zeros(3,3);
GCB = zeros(3,3);

for i = 1:3
    for j = 1:3
        GABC(i,j) = trace(sqrtm(rhoABC)*kron(eye(length(rhoABC)/2),sigma{i+1})*sqrtm(rhoABC)*kron(eye(length(rhoABC)/2),sigma{j+1}));
    end
end
U_ABC = real(1 - max(eig(GABC)));


for i = 1:3
    for j = 1:3
        GCA(i,j) = trace(sqrtm(rhoAC)*kron(eye(length(rhoAC)/2),sigma{i+1})*sqrtm(rhoAC)*kron(eye(length(rhoAC)/2),sigma{j+1}));
    end
end
U_CA = real(1 - max(eig(GCA)));


for i = 1:3
    for j = 1:3
        GCB(i,j) = trace(sqrtm(rhoBC)*kron(eye(length(rhoBC)/2),sigma{i+1})*sqrtm(rhoBC)*kron(eye(length(rhoBC)/2),sigma{j+1}));
    end
end
U_CB = real(1 - max(eig(GCB)));


Answer4 = U_ABC - U_CA - U_CB;