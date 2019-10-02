%% clearing the workspace
clc;close all;clear;

%% What is K-Means?
% K-Means is a clustering algorithm that aims to parition n points
% into K clusters. 

%% Lets load up a dataset
% We will use the iris dataset to demonstrate the power
% of the k-means algorithm. The data set consists of 50 samples 
% from each of three species of Iris (Iris setosa, 
% Iris virginica and Iris versicolor). 
% It consists of four features the length and width of the sepals, petals
% in centimeters.We will just use the last two features in this script.

disp("Loading Iris dataset")

load irisdataset
iris_data = meas(:,3:4);

%% Visualizing the dataset
% lets plot the points
disp("Visualizing data")
figure(1)
plot(iris_data(:,1),iris_data(:,2),'k*','MarkerSize',5);
title 'Fisher''s Iris Data';
xlabel 'Petal Lengths (cm)'; 
ylabel 'Petal Widths (cm)';
% close all;
%% K-Means implementation

% K is number of clusters
K = 3;

% First we randomly pick K centroids that will represent each cluster
% rand_centroid_idx = randi(length(meas),K,1);
rand_centroid_idx = [1,55,125];
centroids = iris_data(rand_centroid_idx,:);

max_iterations = 100;

cluster_assigned = zeros(length(iris_data),1);

% Make zero vectors to keep track of the sum of each sample
% in the cluster.
cluster_sum = zeros(K,2);
cluster_samples = zeros(K,1);
     
disp("Running k-means!")
for iter = 1:max_iterations
    
    %Assign each point to a cluster
    for num_sample = 1:length(iris_data)
        
        %Find the eulidean distance between a sample and the centroids
        temp = iris_data(num_sample,:) - centroids;
        euc_dist = vecnorm(temp,2,2);
        
        % Get the index of centroid with the minimum distance.
        % That will be the cluster we assign the sample to.
        closest_cluster = find(euc_dist == min(euc_dist));
        
        % Assign the sample to the cluster.
        cluster_assigned(num_sample) = closest_cluster;
        
        % Add the samples that belong to the same cluster.
        cluster_sum(closest_cluster,:) = cluster_sum(closest_cluster,:) ...
            + iris_data(num_sample,:);
        
        % Track the number of samples in the cluster.
        cluster_samples(closest_cluster) = cluster_samples(closest_cluster)+1;
        
    end
    
    % Update the centroids by the mean of all the points that belong to
    % that cluster.
    centroids =  cluster_sum ./ cluster_samples;
    
    % Reset to zeros for the next iteration
    cluster_sum = zeros(K,2);
    cluster_samples = zeros(K,1);
end
disp("Clustering finished!")

%% Lets see how well K-Means it did!
disp("Displaying Clusters")

figure(2)
for i=1:K    
    pts = iris_data(cluster_assigned==i,:);
    plot(pts(:,1),pts(:,2),'.','color',rand(1,3),'MarkerSize',12); hold on;
end

plot(centroids(:,1),centroids(:,2),'r+','MarkerSize',12);
title 'Fisher''s Iris Data';
xlabel 'Petal Lengths (cm)'; 
ylabel 'Petal Widths (cm)';
legend('Cluster 1','Cluster 2','Cluster 3','Centroids',...
       'Location','northwest')

