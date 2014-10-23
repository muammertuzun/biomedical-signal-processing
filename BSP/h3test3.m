   t = -10:.01:10;
   testMatris=zeros(3,length(t));
   
   testMatris(1,:) = square(2*pi*30*t);
   testMatris(2,:) = sin(2*pi*10*t);
   testMatris(3,:) = sawtooth(t,1);
   
   corrcoef(testMatris');
