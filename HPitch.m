function y = HPitch(son)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[yin, Fs]=audioread(son);


[x,Fs]=audioread(son);

if(size(x) >= 2) %Permet si la matrice à plus d'une colonne de supprimer la seconde
    x(:,2) = [];
end

N=length(x);
M1=2;
x_deci=x(1:M1:N);
y=x_deci;

sound(y,Fs);
figure(1)
hold on
plot(x,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

end

