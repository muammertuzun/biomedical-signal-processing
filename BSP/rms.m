f = 4 ;
of = 500 ;
t = 0:1/of:1;
a = sin ( 2* pi * f *t);
b = sin ( 2* pi * f *t + pi / 3 );
kareToplam = sum(a.*a);
rmsDeger = sqrt( kareToplam / length(a) ) 

plot (a)
hold on 
plot (b)
