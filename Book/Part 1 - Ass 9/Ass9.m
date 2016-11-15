I = [0,0,1,0,0; 1,0,1,1,0; 0,0,1,0,0; 1,0,0,1,0; 1,0,1,0,0];
Icc = CCFinder(I);
Ithresh = Threshholding(Icc, 1);
Ithresh = (Ithresh == 0);
figure;
imshow(Ithresh);