%question one square wave and triangle wave
%square wave
t = 1:1:100;
for i = 1:1:100
    if sin((i./50).*2.*pi) >= 0       y_square(i) = 1;
    else                                             y_square(i) = -1;
    end
end
%triangle wave
for i = 1:1:100
    if i <= 25      y_triangle(i) = 1 - (i./12.5);
    elseif i <=50 y_triangle(i) = -1 + ((i-25)./12.5);
    elseif i <=75 y_triangle(i) = 1 - ((i-50)./12.5);
    else y_triangle(i) = -1 + ((i-75)./12.5);
    end
end
subplot 211;    plot(t./50,y_square);  axis([0 2 -2 2]); xlabel('time'); title('Q1 Square wave'); grid on;
subplot 212;    plot(t./50,y_triangle); axis([0 2 -2 2]); xlabel('time'); title('Q1 Triangle wave'); grid on;
figure;
%question two use Fourier series
%square wave
T=2; t0=linspace(0,2,100);
z_square1 = fourier(y_square,T,2,t0);
z_square2 = fourier(y_square,T,4,t0);
z_square3 = fourier(y_square,T,6,t0);
z_square4 = fourier(y_square,T,8,t0);
z_square5 = fourier(y_square,T,10,t0);
plot(t0,z_square1,t0,z_square2,t0,z_square3,t0,z_square4,t0,z_square5);
xlabel('time');  title('Q2'); grid on; legend('1st','2nd','3rd','4th','5th');   figure;
%question three use Fourier series
%triangle wave
z_triangle1 = fourier(y_triangle,T,2,t0);
z_triangle2 = fourier(y_triangle,T,4,t0);
z_triangle3 = fourier(y_triangle,T,6,t0);
z_triangle4 = fourier(y_triangle,T,8,t0);
z_triangle5 = fourier(y_triangle,T,10,t0);
plot(t0,z_triangle1,t0,z_triangle2,t0,z_triangle3,t0,z_triangle4,t0,z_triangle5);
xlabel('time');  title('Q3'); grid on;
legend('1st','2nd','3rd','4th','5th');  figure;
%question four use Fourier series
for i = 1:1:100
    if i <= 25      four_f(i) = -1;
    elseif i <=50 four_f(i) = -1 + ((i-25)./12.5);
    elseif i <=75 four_f(i) = -1;
    else four_f(i) = -1 + ((i-75)./12.5);
    end
end
z1 = fourier(four_f,T,1,t0);
z2 = fourier(four_f,T,2,t0);
z3 = fourier(four_f,T,3,t0);
z4 = fourier(four_f,T,4,t0);
z5 = fourier(four_f,T,5,t0);
plot(t0,z1,t0,z2,t0,z3,t0,z4,t0,z5);
xlabel('time');  title('Q4'); grid on;
legend('1st','2nd','3rd','4th','5th');