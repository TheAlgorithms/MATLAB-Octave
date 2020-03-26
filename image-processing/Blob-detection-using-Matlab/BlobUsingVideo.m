%% read the frame

cap = vision.VideoFileReader('multiple_ball.avi');
cap.VideoOutputDataType = 'double';

%% reduce noise by using opening

noise = strel('disk',3);

%% blob analysis

% to perform a blob analysis on the video frame we need to use step
% function :- parameter => (blob analysis system object , input image i.e open)
% function output 3 :- area , centroid , bounding box

blob = vision.BlobAnalysis('MinimumBlobArea',200,...
    'MaximumBlobArea',5000);

% Create VideoPlayer
vidPlayer = vision.DeployableVideoPlayer;

%% while True
while ~isDone(cap)
    
    % Read Frame
    frame = step(cap);
  
    % Convert RGB image to HSV
    hsv = rgb2hsv(frame);

    % Define thresholds for channel 1 based on histogram settings
    channel1Min = 0.398;
    channel1Max = 0.498;
    
    % Define thresholds for channel 2 based on histogram settings
    channel2Min = 0.355;
    channel2Max = 1.000;
    
    % Define thresholds for channel 3 based on histogram settings
    channel3Min = 0.000;
    channel3Max = 1.000;

    % Create mask based on chosen histogram thresholds
    Ibw = (hsv(:,:,1) >= channel1Min ) & (hsv(:,:,1) <= channel1Max) & ...
        (hsv(:,:,2) >= channel2Min ) & (hsv(:,:,2) <= channel2Max) & ...
        (hsv(:,:,3) >= channel3Min ) & (hsv(:,:,3) <= channel3Max);
    
    % Use morphological operations to remove disturbances
    opening = imopen(Ibw,noise);
    
    % Extract the blobs from the frame 
    [object_area,object_centroid,bounding_box] = step(blob, opening);
    
    % Draw a box around the detected objects
    Ishape = insertShape(frame,'Rectangle',bounding_box);
    
    % Insert a string of number of objects detected in the video frame.
    
    numObj = length(object_area);
    
    %Itext = step(hTextIns,Ishape,int32(numObj));

    %Play in the video player
    %step(vidPlayer, Itext);
    step(vidPlayer, Ishape);
    

end

%% Clean

release(cap)
release(blob)
%release(hTextIns)
release(vidPlayer)