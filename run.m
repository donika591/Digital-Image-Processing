clc;
clear;
im = imread('c.png');

pixel = pixel_replication(im, 4);
subplot(1,2,1);
imshow(pixel);
title('pixel replication');

zeroorder = zero_order_zooming(im);
subplot(1,2,2);
imshow(zeroorder);
title('zero order');


figure(2)
korder= k_order_zoom(im, 2);
subplot(2,3,1);
imshow(korder);
title('2 order zoom');
korder= k_order_zoom(im, 3);
subplot(2,3,2);
imshow(korder);
title('3 order zoom');
korder= k_order_zoom(im, 4);
subplot(2,3,3);
imshow(korder);
title('4 order zoom');
korder= k_order_zoom(im, 5);
subplot(2,3,4);
imshow(korder);
title('5 order zoom');
korder= k_order_zoom(im, 6);
subplot(2,3,5);
imshow(korder);
title('6 order zoom');
