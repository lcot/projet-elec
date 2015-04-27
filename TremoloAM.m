function y=TremoloAM(son)
% read the sample waveform
[x,Fs,bits] = wavread(son);
index = 1:length(x);
Fc = 5;
alpha = 0.5;
trem=(1+ alpha*sin(2*pi*index*(Fc/Fs)))';
y = trem.*x;
figure(1)
hold on
plot(x,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

sound(y,Fs);