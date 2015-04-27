function y=LPitch(son)

[x,Fs]=audioread(son);

N=length(x);
M2=2;
x_inter=zeros(1,N/2);
k=1;
for i=1:M2:N;
    x_inter(k)=x(i);
    k=k+1;
end
    
y=x_inter;

figure(1)
hold on
plot(x,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

sound(y,Fs);