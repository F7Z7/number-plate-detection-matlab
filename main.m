%load image and convert to grayscale
img=imread("car-17.png");
gray = rgb2gray(img);

%smooth and rmeove noise
gray=medfilt2(gray,[3 3]);
level = graythresh(gray);     % Otsu’s method (automatic threshold)

%reformat the image
bw = imbinarize(gray,level); %binarize to 0 and 1 
bw=imcomplement(bw); %complement 1 to 0 and vice versa

%edge detections
bw=edge(bw,"canny");
imshow(bw);

