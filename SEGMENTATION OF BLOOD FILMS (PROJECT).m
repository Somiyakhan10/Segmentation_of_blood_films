
% Task 1: Pre-processing 
 Load input image
I = imread('2588.jpeg');
figure, imshow(I)
title('Original')
saveas(gcf, "Original.png")

% Step-2: Convert image to grayscale
I_gray = rgb2gray(I);
figure, imshow(I_gray)
title('Gray Conversion')
saveas(gcf, "Gray Conversion")

% Step-3: Rescale image
I_resize = imresize(I_gray, [512, NaN]);
figure, imshow(I_resize)
title('Rescaled (imresize)')
saveas(gcf, "Rescaled")

% Step-4: Enhance image before binarization
I_imadjust = imadjust(I_resize);
figure, imshow(I_imadjust)
title('Image Enhanced for Binarization')
saveas(gcf, "Image Enhanced for Binarization")

% Step-5: Image Binarization
BW = imbinarize(I_imadjust);
figure, imshow(BW)
title('Binarized Image')
saveas(gcf, "Binarized Image")

% Task 2: Edge detection 
canny = edge(I_imadjust, 'Canny');
figure, imshow(canny)
title('Canny Edge Detection')
saveas(gcf, "Canny Edge Detection")

% Task 3: Simple segmentation --------------------
level = graythresh(I_resize);
BW = imbinarize(I_resize, level);
figure, imshowpair(I_gray, BW, 'montage')
title('Graythresh Segmentation')
saveas(gcf, "Graythresh Segmentation")

% Active contour
mask = zeros(size(I_resize));
mask(25:end-25, 25:end-25) = 1; % boundaries
bw = activecontour(I_resize, mask, 900);
figure, imshow(bw)
title('Active Contour Segmentation')
saveas(gcf, "Active Contour Segmentation")

% Denoise with bwareaopen
dnoise = bwareaopen(bw, 170);
figure, imshow(dnoise)
title('Denoised Image (bwareaopen)')
saveas(gcf, "Denoised Image (bwareaopen)")

% Task 4: Object Recognition 
% Read image
i = imread('2588.jpeg');
% Grayscale
g = rgb2gray(i);
% Enhance image for binarization
ima = imadjust(g);
% Simple segmentation on grayscale
level = graythresh(ima);
BW = imbinarize(ima, level);
% Active contour
mask = zeros(size(BW));
mask(25:end-25, 25:end-25) = 1;
bw = activecontour(BW, mask, 900);
mask = zeros(size(ima));
mask(25:end-25, 25:end-25) = 1;
bw = activecontour(ima, mask, 1600);
% Denoise
bw = bwareaopen(bw, 170);
% Fill holes
bw = imfill(bw, 'holes');

figure, imshow(bw)
title('Object Recognition')
saveas(gcf, "Object Recognition")

% Get boundaries of all solid objects
[B, L] = bwboundaries(bw, 'noholes');
hold on

% Get region statistics for later
stats = regionprops(L, 'Area', 'Centroid', 'PixelList');

% Circularity threshold value
threshold = 0.50;

% Initialize flag to check presence of bacteria
bacteria_present = false;

% Loop over boundaries
for k = 1:length(B)
    boundary = B{k};
    delta_sq = diff(boundary).^2;
    perimeter = sum(sqrt(sum(delta_sq, 2)));
    area = stats(k).Area;
    metric = 4 * pi * area / perimeter^2;
    metric_string = sprintf('%2.2f', metric);

    if metric > threshold
        fill(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 2, 'LineStyle', 'none');
        bacteria_present = true;
    else
        fill(boundary(:,2), boundary(:,1), 'b', 'LineWidth', 2, 'LineStyle', 'none');
    end
end

% Display message based on bacteria presence
if bacteria_present
    text(10, 10, 'Bacteria Present', 'Color', 'g', 'FontSize', 12, 'FontWeight', 'bold', 'BackgroundColor', 'k');
else
    text(10, 10, 'No Bacteria Detected', 'Color', 'r', 'FontSize', 12, 'FontWeight', 'bold', 'BackgroundColor', 'k');
end

hold off
