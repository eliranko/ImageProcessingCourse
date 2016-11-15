Icam = Threshholding(imread('cameraman.tif'), 200);
Ispi = Threshholding(imread('spine.tif'), 30);

figure;
imshow(Icam);
figure;
imshow(Ispi);