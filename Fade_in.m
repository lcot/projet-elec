function y=Fade_in(son)

[yin,Fs]=audioread(son);

yin=yin';

if size(yin)>=1
    yin(:,1)= [];
    yin(:,2)= [];
    yin(:,3)= [];
    yin(:,4)= [];
    yin(:,5)= [];
    yin(:,6)= [];
    yin(:,7)= [];
    yin(:,8)= [];
end

step=1/length(yin);
fd=0:step:(1-step);
size(yin)
size(fd)
fadin=fd.*yin;
y=fadin;

sound(y,Fs);

figure(1)
hold on
plot(yin,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');
