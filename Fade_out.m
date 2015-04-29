function y=Fade_out(son)

[yin,Fs]=audioread(son);

if size(yin)>=2;
    yin(:,2)= [];
end

yin=yin';
step=1/length(yin);
fd=1:-step:(0+step);

fadout=fd.*yin;
y=fadout;

sound(y, Fs);

figure(1)
hold on
plot(yin,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');
end