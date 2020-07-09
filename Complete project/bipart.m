clear
clc
n = 8;
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

                    if Tab + Tac + Tad >= 4*p*(1-p)*(1-b^2)*(1-c^2-d^2)
                        Answer = 2;
                    else
                        Answer = 0;
                    end
                    
                    A(i,5) = Answer;
                    i = i + 1;
                else
                end
            end
        end
    end
end
A
[m F] = min(A(:,5))