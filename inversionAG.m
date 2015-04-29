function y = inversionAG(sound)

[yin, Fs]=audioread(sound);

if size(yin)>=2
    yin(:,2)= [];
end 
k=2001;
y=0;
yinn=yin';

while k<=length(yinn);
    if yin(k)<=0,2;
        y(k-2000:1:k)=yinn(k-2000:1:k)+0,2;
    else 
        y(k-2000:1:k)=yinn(k-2000:1:k)-0,2;
    end
    k=k+2000;
end

sound(y, Fs);

figure(1)
hold on
plot(yin,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');
end