signal = c(1,:);
vektorArtan = [] ; vektorAzalan = [];

for i = 1 : length(signal) - 1
    
    if ( signal(i+1) - signal ( i ) >= 0 )
        vektorArtan(end+1) = i;
    else
        vektorAzalan(end+1) = i;
    end
    
end

plot(signal)
hold on
for i = 1 : length(signal) - 1
    
    if ( ismember (i,vektorArtan) )
        
        
        
    end
    
end




%%
for i = 1:length(signal)-1
    
    if ismember(i,vektorArtan) && ismember((i+1),vektorArtan)
        
        plot(i:i+1,signal(i:i+1),'r')
        
    end
    
end
