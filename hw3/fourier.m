%fourier.m
function y = fourier(x,T,n,t)
    a0=0, dt=T./100;
    for i=1:100
        a0 = a0 + (1./T).*x(i).*dt;
    end
    y = a0;
    for i=1:1:n
        an=0, bn=0;
        for j=1:100
            an=an + (2./T).*x(j).*cos(i.*2.*pi.*(j.*dt)).*dt;
            bn=bn + (2./T).*x(j).*sin(i.*2.*pi.*(j.*dt)).*dt;
        end
        y=y+an.*cos(i.*2.*pi.*t) + bn.*sin(i.*2.*pi.*t);
    end
end