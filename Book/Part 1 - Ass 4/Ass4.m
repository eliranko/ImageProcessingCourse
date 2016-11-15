Writer(imread('cameraman.tif'));
fileId = fopen('a');
I = fread(fileId, [256 256], 'uint8');
fclose(fileId);
imshow(uint8(I));
