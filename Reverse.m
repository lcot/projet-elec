function y = Reverse(son)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[x, Fs]=wavread(son);

y=zeros(1,length(x));
k=length(x)
for i=1:1:(size(x)-1)
    y(k)=x(i);
    k=(k-1);
end

figure(1)
hold on
plot(x,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

sound(y, Fs);

