function [y]=Lire(son)
   
   [x,Fs] = audioread(son);
   sound(x,Fs);
   
end