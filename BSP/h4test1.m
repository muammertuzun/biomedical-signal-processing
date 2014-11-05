f1 = 100;
f2 = 200;
f3 = 300;
k1 = 1;
k2 = 0.5;
k3 = 1.5;
t = 0:0.001:1;
freq = 0:10:500;

corrMatris = zeros(1,length(freq)); 

sig = k1*sin(2*pi*f1*t) + k2*sin(2*pi*f2*t + pi/2) + k3*sin(2*pi*f3*t + pi/ 3);
i = 1;
for f = 0:10:500
    
    corrSig = sin(2*pi*f*t);
    a = xcorr( sig, corrSig );
    corrMatris(i) = max(a);
    i=i+1;
    
end

plot(freq,corrMatris)
