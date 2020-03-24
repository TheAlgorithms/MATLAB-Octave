% Copyright 2014-2015 The MathWorks, Inc.
%% Load sample frames
load sampleFrames.mat
subplot(1,3,1)
imshow(vidFrame1)

%% Threshold image
% Convert RGB image to chosen color space
I = rgb2hsv(vidFrame1);

% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.379;
channel1Max = 0.496;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.436;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
BW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);

subplot(1,3,2)
imshow(BW)

%% Remove disturbances
diskElem = strel('disk',3);
Ibwopen = imopen(BW,diskElem);
subplot(1,3,3)
imshow(Ibwopen)

%% Blob Analysis
hBlobAnalysis = vision.BlobAnalysis('MinimumBlobArea',200,...
    'MaximumBlobArea',5000);
[objArea,objCentroid,bboxOut] = step(hBlobAnalysis,Ibwopen);

%% Annotate image
Ishape = insertShape(vidFrame1,'rectangle',bboxOut,'Linewidth',4);
figure
subplot(1,2,1)
imshow(Ishape)

numObj = numel(objArea);
hTextIns = vision.TextInserter('%d','Location',[20 20],'Color',...
    [255 255 0],'FontSize',30);
Itext = step(hTextIns,Ishape,int32(numObj));
subplot(1,2,2)
imshow(Itext)

%% Clean up
release(hBlobAnalysis)
release(hTextIns)