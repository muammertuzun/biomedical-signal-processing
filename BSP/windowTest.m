s=val(1,:);
l = length (s);
win=50;
ort=[];
a = 1 ;
i=1;

while ( i+win <= l  )
    
    ornek = s(i:(i+win));
    ort(i:(i+win)) = ornek - mean(ornek);
    i = i + win/2;
    
  
end

plot(ort)
