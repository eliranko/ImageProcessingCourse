I=imread('cameraman.tif');
figure;
imshow(I);
Ineg = GetNegative(I);
figure;
imshow(uint8(Ineg));