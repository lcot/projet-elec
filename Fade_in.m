function y=Fade_in(son)

[yin,Fs]=wavread(son);

FADE_LEN = 5; % 5 second fade

fade_samples = round(FADE_LEN.*Fs); % figure out how many samples fade is over
fade_scale = linspace(0,1,fade_samples)'; % create fade

sig_faded = yin;
sig_faded(1:fade_samples) = yin(1:fade_samples).*fade_scale; % apply fade


sound(sig_faded,Fs);

figure(1)
hold on
plot(yin,'r');
figure(2)
plot(sig_faded,'b');
title('Flanger and original Signal');
