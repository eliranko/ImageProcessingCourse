I = imread('cameraman.tif');
figure;
mesh(I);
figure;
Ismt=MySmooth(I);
%Ismt=MySmooth(Ismt);
mesh(I);
imshow(uint8(Ismt));