GAB = zeros(3,3);

for i = 1:3
    for j = 1:3
        GAB(i,j) = trace(sqrtNN(rhoABC)*kron(sigma{i+1},eye(length(rhoABC)/2))*sqrtNN(rhoABC)*kron(sigma{j+1},eye(length(rhoABC)/2)));
    end
end
U_ABC = real(1 - max(eig(GAB)));


for i = 1:3
    for j = 1:3
        GAB(i,j) = trace(sqrtNN(rhoAB)*kron(sigma{i+1},eye(length(rhoAB)/2))*sqrtNN(rhoAB)*kron(sigma{j+1},eye(length(rhoAB)/2)));
    end
end
U_AB = real(1 - max(eig(GAB)));


for i = 1:3
    for j = 1:3
        GAB(i,j) = trace(sqrtNN(rhoAC)*kron(sigma{i+1},eye(length(rhoAC)/2))*sqrtNN(rhoAC)*kron(sigma{j+1},eye(length(rhoAC)/2)));
    end
end
U_AC = real(1 - max(eig(GAB)));


Answer2 = U_ABC - U_AB - U_AC;