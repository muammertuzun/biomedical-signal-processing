t=0:0.0001:1; 
f=20;
a = sin(2*pi*f*t);
b = hilbert(a);
absB = abs(b);
c=randn(length(t));
plot(t,a)
hold on
plot(t,absB,'r')
plot(t,c,'r*')
