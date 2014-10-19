resim = imread ( 'MRI_BRAIN_SCAN.jpg' );

resim = resim(:,:,1);
subplot(2,2,1), imshow(resim)
subplot(2,2,2), imshow(resim + 50)
subplot(2,2,3), imshow(3*resim)
subplot(2,2,4), im2bw(resim,0.5)
