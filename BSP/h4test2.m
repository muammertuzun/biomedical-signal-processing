f = 5 ;
t = 0:0.01:1;

sig1 = sin(2*pi*f*t);
sig2 = sin(2*pi*f*t+pi/3);

a = xcorr(sig1,sig2);

find(a == max(a))

plot(a)
