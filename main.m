img=imread("car-17.png");
gray = rgb2gray(img);
level = graythresh(gray);     % Otsu’s method (automatic threshold)
bw = imbinarize(gray,level);
imshow(bw);

