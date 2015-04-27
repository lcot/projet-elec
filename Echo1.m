function y=Echo1(son)
 
[x,Fs,N]=wavread(son);
 
xlen=length(x);
a=0.5;
R=ceil(Fs*100e-3);
y=zeros(size(x));
d=zeros(size(x));
%filter
for i=1:1:R+1
    y(i)=x(i);
end
for i=R+1:1:xlen
    y(i)=x(i)+a*x(i-R);
    d(i)=a*x(i-R);
end

figure(1)
hold on
plot(x,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

sound(y,Fs,N);