I=imread('cameraman.tif');
figure; imshow(I);

for i = 1:2
    figure;
    imshow(uint8(Q2_1(I)));
end