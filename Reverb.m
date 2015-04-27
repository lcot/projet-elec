function y=Reverb(son)
[d,r]=audioread(son);
R=ceil(r*70e-3);
num=[0.5,zeros(1,R),1];
den=[1,zeros(1,R),0.5];
d1=filter(num,den,d);
y=d1;

sound(y,r);