Iin1 = imread('cameraman.tif');
figure;
title('reg');
imshow(Iin1);

Iout1 = Iin1(2:2:end,2:2:end);
figure;
title('out1');
imshow(Iout1);

Iout2 = zeros(size(Iin1));
Iout2(1:2:end-1, 1:2:end-1)=Iout1;
Iout2(1:2:end-1, 2:2:end)=Iout1;
Iout2(2:2:end, 1:2:end-1)=Iout1;
Iout2(2:2:end, 2:2:end)=Iout1;
figure;
title('out2');
imshow(uint8(Iout2));