function LPitch = Untitled(son)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[yin, Fs]=audioread(son);


[x,Fs]=audioread(son);

if(size(x) >= 2) %Permet si la matrice à plus d'une colonne de supprimer la seconde
    x(:,2) = [];
end

N=length(x);
M2=1.5;
x_inter=zeros(1,M2*N);
x_inter(1:M2:M2*N)=x;
y=x_inter;

sound(y,Fs);
figure(1)
hold on
plot(x,'r');
figure(2)
plot(y,'b');
title('Flanger and original Signal');

end

