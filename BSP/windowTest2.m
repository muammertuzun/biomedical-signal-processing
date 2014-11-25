toplam = [];
vektor = [] ;
genel = [] ;

for x = 1 :  length(val(:,1))
    
i = 1 ;
sayac = 1;
sig = val(x,:);

while( i <= length(sig)-64 )
    
    a = sig(i:i+63);
    toplam(sayac) = mean(a);
    A = abs(fft(a));
    B = cumsum(A);
    orta = max(B)/2;
    orta2 = abs(orta - B) ;
    val2 = find( orta2 == min(orta2) );
    vektor(sayac) = val2;
    sayac=sayac+1;
    i=i+32;
    
end

genel(x,:) = vektor ;

figure
plot((1:length(vektor))*64,vektor*25,'r')
hold on
plot(val(x,:))

end
