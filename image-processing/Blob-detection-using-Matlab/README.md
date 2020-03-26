## Blob detection and analysis using Matlab
A Blob is a group of connected pixels in an image that share some common property ( E.g grayscale value ).

### Steps includes for blob analysis on image 

   > ### Load sample frames
   
   ```matlab
      
      load sampleFrames.mat
      subplot(1,3,1)
      imshow(vidFrame1)
   ```
   > ### Threshold image
   ```matlab
   I = rgb2hsv(vidFrame1);

   % Define thresholds for channel 1 based on histogram settings
   channel1Min = 0.333;
   channel1Max = 0.561;

   % Define thresholds for channel 2 based on histogram settings
   channel2Min = 0.327;
   channel2Max = 1.000;

   % Define thresholds for channel 3 based on histogram settings
   channel3Min = 0.186;
   channel3Max = 1.000;

   % Create mask based on chosen histogram thresholds
   sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
       (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
       (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
   BW = sliderBW;

   subplot(1,3,2)
   imshow(BW)

   
   ```
   > ### Remove disturbances
   ```matlab
      
      noise = strel('disk' , 3);

      open = imopen(BW, noise);
      subplot(1,3,3);
      imshow(open);

   ```
   > ### Blob Analysis
   
   ```matlab
   blob = vision.BlobAnalysis('MinimumBlobArea',200,...    
    'MaximumBlobArea',5000);
    % to perform a blob analysis on the video frame we need to use step
    % function :- parameter => (blob analysis system object , input image i.e open)
    % function output 3 :- area , centroid , bounding box

    [objectArea , objCentroid , bboxout] = step(blob , open);


   ```
   > ### Annotate image
   ```matlab
     
     % now we get a bounding box cordinates of detected ball let apply contour
     % over the detected ball using rectangle 

     rectangle = insertShape(vidFrame1 , 'rectangle',bboxout , 'Linewidth' , 4 , 'Color',...
         [155 164 155]);

     figure 
     subplot(1,2,1)
     imshow(rectangle)


   ```
   > ### Clean up
   
   ```matlab
      release(blob)

   ```
   
### Result 

![](Media2.gif "Blob Detection using Matlab")

