function y=Fade_in(son)

[yin,Fs]=audioread(son);
if size(yin)>=2
    yin(:,2)= [];
end
yin=yin';
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
