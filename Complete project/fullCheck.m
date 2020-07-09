clear
clc
n = 6;
i = 1;
for p = linspace(0,1,n)
    for b = linspace(0,1,n)
        for c = linspace(0,1,n)
            for d = linspace(0,1,n)
                if abs(c)^2+abs(d)^2 <= 1
                    disp(i)
                    A(i,1) = p;
                    A(i,2) = b;
                    A(i,3) = c;
                    A(i,4) = d;
                    Tabcd = 4*p^2*abs(b)^2*(1-abs(b)^2) + 4*p*(1-p)*((1-abs(b)^2)*(1-abs(c)^2-abs(d)^2) + abs(b)^2*abs(c)^2 + abs(b)^2*abs(d)^2) + 4*(1-p)^2*(abs(c)^2*(1-abs(c)^2-abs(d)^2)+abs(d)^2*(1-abs(c)^2-abs(d)^2));
                    if (1-p)^2*abs(d)^2*(1-abs(c)^2-abs(d)^2) > p^2*(1-abs(b)^2)*abs(b)^2 + p*(1-p)*abs(b)^2*abs(c)^2 - 0.001
                        Tab = 4*(1-p)^2*abs(d)^2*(1-abs(c)^2-abs(d)^2) - 4*sqrt(4*p^2*(1-p)^2*(1-abs(b)^2)*abs(b)^2*abs(d)^2*(1-abs(c)^2-abs(d)^2) + 4*p*(1-p)^3*abs(b)^2*abs(c)^2*abs(d)^2*(1-abs(c)^2-abs(d)^2)) + 4*p^2*(1-abs(b)^2)*abs(b)^2 + 4*p*(1-p)*abs(b)^2*abs(c)^2;
                    else
                        Tab = 0;
                    end
                    if (1-p)^2*abs(c)^2*(1-abs(c)^2-abs(d)^2) > p^2*(1-abs(b)^2)*abs(b)^2 + p*(1-p)*abs(b)^2*abs(d)^2 - 0.001
                        Tac = 4*(1-p)^2*abs(c)^2*(1-abs(c)^2-abs(d)^2) - 4*sqrt(4*p^2*(1-p)^2*(1-abs(b)^2)*abs(b)^2*abs(c)^2*(1-abs(c)^2-abs(d)^2) + 4*p*(1-p)^3*abs(b)^2*abs(c)^2*abs(d)^2*(1-abs(c)^2-abs(d)^2)) + 4*p^2*(1-abs(b)^2)*abs(b)^2 + 4*p*(1-p)*abs(b)^2*abs(d)^2;
                    else
                        Tac = 0;
                    end
                    if p*(1-p)*(1-abs(b)^2)*(1-abs(c)^2-abs(d)^2) > p*(1-p)*abs(b)^2*(abs(c)^2+abs(d)^2) - 0.001
                        Tad = 4*p*(1-p)*(1-abs(b)^2)*(1-abs(c)^2-abs(d)^2) - 4*sqrt(4*p^2*(1-p)^2*(1-abs(b)^2)*abs(b)^2*abs(c)^2*(1-abs(c)^2-abs(d)^2) + 4*p^2*(1-p)^2*(1-abs(b)^2)*abs(b)^2*abs(d)^2*(1-abs(c)^2-abs(d)^2)) + 4*p*(1-p)*abs(b)^2*abs(c)^2 + 4*p*(1-p)*abs(b)^2*abs(d)^2;
                    else
                        Tad = 0;
                    end
                    Tabc = tripart(p,b,c,d);
                    Tabd = 4*abs(((p*(1-b^2)+(1-p)*d^2+(1-p)*(1-c^2-d^2))*(p*b^2+(1-p)*c^2))*p*(1-p)*c^2*b^2 + 4*((p*(1-b^2)+(1-p)*d^2+(1-p)*(1-c^2-d^2))*(p*b^2+(1-p)*c^2))*p*(1-p)*sqrt(1-b^2)*b*d*sqrt(1-c^2-d^2));
                    Tacd = 4*abs(((p*(1-b^2)+(1-p)*c^2+(1-p)*(1-c^2-d^2))*(p*b^2+(1-p)*c^2))*p*(1-p)*d^2*b^2 + 4*((p*(1-b^2)+(1-p)*c^2+(1-p)*(1-c^2-d^2))*(p*b^2+(1-p)*c^2))*p*(1-p)*sqrt(1-b^2)*b*c*sqrt(1-c^2-d^2));
                    
                    A(i,5) = i;
                    A(i,6) = real(Tabcd - Tab - Tac - Tad - Tabc - Tacd - Tabd);
                                    
                    i = i + 1;
                else
                end
            end
        end
    end
end
max(A(:,6))
min(A(:,6))

plot(A(:,5),A(:,6))
xlabel('System number')
ylabel('Four-tangle')