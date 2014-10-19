f = 10 ; t = 0:0.01:1;
bc = sin(2*pi*f*t);
yeniMatris = zeros(1000,length(t));

for i = 1:1000
   
    yeniMatris(i,:) = bc + randn(1,101);
    
end
ym1 = mean (yeniMatris(1:10,:),1 );
ym2 = mean (yeniMatris(1:100,:),1);
ym3 = mean (yeniMatris(1:1000,:),1);


subplot(4,1,1), plot(yeniMatris(1,:))
subplot(4,1,2), plot(ym1)
subplot(4,1,3), plot(ym2)
subplot(4,1,4), plot(ym3)
