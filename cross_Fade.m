function y = cross_Fade( son )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[yin,Fs]=audioread(son);
if size(yin)>=2
    yin(:,2)= [];
end 
k=200001;
y=0;
yinn=yin';

while k<=length(yinn)  
alea=rand();
fd=0;
fadin=0;
fadout=0;
if alea>0.5
    step=1/200001;
    fd=0:step:(1-step);
    y(k-200000:1:k)=fd.*yinn(k-200000:1:k);
    
else
    step=1/200001;
    fd=1:-step:(0+step);
    y(k-200000:1:k)=fd.*yinn(k-200000:1:k);
    
end
k=k+200000;
end
sound(y, Fs);

figure(1)
hold on
plot(yin,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

end
