% This function takes two n-dimensional vectors as input and calculates the euclidean distance
function distance = euclidean_distance(coordinate_1,coordinate_2)
    if length(coordinate_1) ~= length(coordinate_2)
        disp('Dimensions of vectors do not match!')
        distance = NaN;
    else
        sum = 0;
        for i=1:1:length(coordinate_1)
            difference = (coordinate_2(i)-coordinate_1(i))^2;
            sum = sum + difference;
        end
        distance = sqrt(sum);
    end
end
