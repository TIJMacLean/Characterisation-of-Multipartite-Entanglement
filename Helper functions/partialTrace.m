function pT = partialTrace(rho,tr)

dim = length(rho)
sys = log2(dim)
binaries = cell(dim,1)
for i = 1:sys
    for j = 1:dim
    end
end
binaries{1,1} = '000';
binaries{2,1} = '001';
binaries{3,1} = '010';
binaries{4,1} = '011';
binaries{5,1} = '100';
binaries{6,1} = '101';
binaries{7,1} = '110';
binaries{8,1} = '111';

working1 = [binaries{i,1} binaries{j,1}]
for k = 1:sys-1
    working1(tr + (k-1)*sys) = ''
end