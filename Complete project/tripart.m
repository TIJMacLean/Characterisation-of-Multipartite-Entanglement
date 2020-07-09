function Tabc = tripart(p,b,c,d)

if abs(c)^2+abs(d)^2 <= 1 && c ~= 0 && b ~= 0 && d ~= 0 && 1-abs(c)^2+abs(d)^2 ~= 0 && 1-abs(b)^2 ~= 0
    
    s = 4*c*d*sqrt((1-abs(c)^2-abs(d)^2))/(b*(1-abs(b)^2));
    p0 = (s^(2/3))/(1+(s^(2/3)));
    p1 = max(p0,1/2 + 1/(2*sqrt(1+s^2)));
    if p <= p0
        Tabc = 0;
    elseif p <= p1
        Tabc = 4*abs(p^2*b^2*(1-b^2) - 4*b*c*d*sqrt(1-c^2-d^2)*sqrt(p*(1-p)^3));
    else
        Tabc = 4*abs(b^2*(1-b^2))*(p-p1)/(1-p1) + ((1-p)/(1-p1))*4*abs(b^2*(1-b^2))*(p1^2-s*sqrt(p1*(1-p1)^3));
    end
    
else
    Tabc = 0;
    
end