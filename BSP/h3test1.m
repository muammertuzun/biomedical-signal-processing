s=val(1,:);
l = length (s);
win=50;
ort=[];
a = 1 ;
i=1;

while ( i+win <= l  )
    
    ornek = s(i:(i+win));
    ort(i:(i+win)) = ornek - mean(ornek);
    i = i + win;
    
  
end

yatayEksen = [] ; dikeyEksen = [] ; yatayEksen2 = []; dikeyEksen2 = [] ;

b = ( max(ort) + mean(ort) ) / 2 ;

for x=2:length(ort)
    
    if ( ort(x) > b  )
        
        if ( ort(x) > ort(x-1) & ort(x) >= ort(x+1)  )
            
            yatayEksen(end+1) = x ;
            dikeyEksen(end+1) = ort(x);
            
            
        end
        
    end
        
end
m=length(yatayEksen);
k=2;

while( k<length(yatayEksen) )
    
    if ( yatayEksen(k) - yatayEksen(k-1) < 200 )
        
        if( dikeyEksen(k) > dikeyEksen(k-1) )
            
            dikeyEksen(k-1) = [];
            yatayEksen(k-1) = [];

        else
            dikeyEksen(k) = [];
            yatayEksen(k) = [];


        end
        
    else
        
        k = k+1;
        
    end
    
end


plot(ort)
hold on
plot(yatayEksen, dikeyEksen ,'*' )

%%

yataySifir = []; dikeySifir = [] ;

for h = 1:length(yatayEksen)
    
    for d = yatayEksen(h) : -1 : 0
        
        if( ort(yatayEksen(h)) < 0  )
            yataySifir(end+1) = h;
            dikeySifir(end+1) = 
        end
        
    end
    
   
end
%%
