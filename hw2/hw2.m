K=1; %N/m
x0=12; %m
m=0.1; %kg
v0=0; %m/s
dt=0.005;
r=10; %彈簧長度
fk=0.5; %阻力
for i=1:2000
    t(i) = i;
    U(i) = (K.*(x0-r).^2)./2;
    F = -(K.*(x0-r));
    if(v0>0)
    a = (F-fk)./m;
    end
    if(v0==0)
    a = F./m;
    end
    if(v0<0)
    a = (F+fk)./m;
    end
    v(i)=v0+a.*dt;
    v0 = v(i);
    x(i) =x0+v0 .*dt;
    x0 = x(i);
    dx(i)=x0-r;
    E(i) = (-F.*(x0-r))./2 + (m.*v0.^2)./2;
end

plot(t,dx,'x');
title('時間對位移量');
xlabel('t');
ylabel('dx');
figure;
plot(v,x,'x');
title('速度對位置');
xlabel('v');
ylabel('x');
figure;
plot(U,x,'x');
title('位能對位置');
xlabel('U');
ylabel('x');
figure;
plot(x,E,'x');
title('總能對位置');
xlabel('x');
ylabel('E');