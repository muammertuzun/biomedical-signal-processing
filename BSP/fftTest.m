sig = val(1,:) - mean(val(1,:));

tSig = fft(sig(1000:1500));
tSig2 = fft(sig(1800:2300));

f = ((0:251)/251)*128;

subplot(2,1,1), plot(f,abs(tSig(1:252)))
subplot(2,1,2), plot(f,abs(tSig2(1:252)))
