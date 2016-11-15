I = imread('cameraman.tif');
figure;
imshow(I);

Iout = FloydSteinberg(I, 100);
figure;
imshow(Iout);