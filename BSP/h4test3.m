sig = val(1,:);
i = 1 ;
toplam = [];
sayac = 1;
vektor = [] ;

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
    i=i+64;
    
end

plot((1:length(vektor))*64,vektor*25,'r')
hold on
plot(sig)
