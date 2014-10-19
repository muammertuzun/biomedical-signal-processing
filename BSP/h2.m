a = c(1,:);
b = c(2,:);
fark = (abs( a - b )) ;
boyut = length (c) ; 

m = find(fark==max(fark))

integral1 = integralAl(c(221:225))
integral2 = integralAl(c(1,:))
sonuc = (integral1 / integral2) * 100


plot (c(1,:))
hold on
plot(c(2,:),'r')
plot ( [ m m ] ,[ a(m) b(m)] , 'k')
plot (1:boyut , a(m) )
plot (1:boyut , b(m))


%%
for i= 1:boyut
    
     if (abs(a(i) - b(i)) == fark)
         i
        
     end
end
