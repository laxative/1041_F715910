%question one
v_max=3500, num=10000, dv=30, T=400;
k=1.38e-23, N=6.02e23, R=N.*k, m=0.004./N;

probility=maxwell(m,k,T,1:3500);
plot(probility);  grid on; xlabel('v(m/s)'); ylabel('probility'); figure;
Y = randn(num,1).*(v_max./9);
hist(Y+1500,v_max./dv);  figure;

%question two

%question three

%question four
num = 50000;
pro_400K = maxwell(m,k,400,1:3500);
pro_600K = maxwell(m,k,600,1:3500);
pro_1000K = maxwell(m,k,1000,1:3500);
plot(pro_400K); grid on; xlabel('v(m/s)'); ylabel('probility');
hold on;
plot(pro_600K);
hold on;
plot(pro_1000K)
legend('400K','600K','1000K'); figure;

%question five