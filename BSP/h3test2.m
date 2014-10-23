s=c(1,:);

yatayEksen=[];
dikeyEksen=[];


for i=3:length(s)-1
    
        if ( s(i) >= s(i-1)& s(i-1) >= s(i-2)  & s(i) >= s(i+1) & s(i+1) >= s(i+2)  )
            
            yatayEksen(end+1) = i ;
            dikeyEksen(end+1) = s(i);
            
        end
        
end

plot(s)
hold on
plot(yatayEksen, dikeyEksen,'*r')
