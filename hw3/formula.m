function y=formula(n,fx,time,T)
 
    a0=0;
    dt=T./100;
    f=1./T;
    for i=1:100
        a0=a0+f.*fx(i).*dt;
    end
y=a0;
for j=1:1:n
a=0;
b=0;
for k=1:100
a=a+2.*f.*fx(k).*dt.*cos(2.*j.*pi.*k.*dt);
b=b+2.*f.*fx(k).*dt.*sin(2.*j.*pi.*k.*dt);
end
y=y+a.*cos(2.*pi.*j.*time)+b.*sin(2.*pi.*j.*time);
end
 
end