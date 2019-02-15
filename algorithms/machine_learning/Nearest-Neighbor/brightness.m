function y = brightness(red, green, blue)
  % brightness: returns 1 if the color is light otherwise 0
  % INPUT: RGB-value of the color (red, green, blue)
  % OUTPUT: 0 or 1 (0 dark, 1 light)
  % The function used the nearest neighbor algorithm

  % train set for various rgb-values and its brightness
  % the set contains vectors with dimension 4x1
  % [r, g, b, brightness]
  train_set = [2, 99, 255, 1;
            37,44,58,0;
            139, 169, 229,1;
            14, 255, 10, 1;
            2, 28, 1, 0;
            20, 33, 20, 0;
            252, 227, 65,1;
            71, 65, 24, 0;
            168, 80, 80,1;
            119, 35, 90, 0; 
            186, 13, 126, 1;];
            
  function length = eulidean(v1, v2)
    % eulidean: calculates the eulidean length between two vectors (3x1)
    % The calculation contains only the RGB-values! (3x1)
    % HELPER-FUNCTION
    length = sqrt((v2(1)-v1(1))^2 + (v2(2)-v1(2))^2 + (v2(3)-v1(3))^2);
  endfunction
  
  
  rgb = [red green blue];
  x1 = train_set(1,:);
  x2 = x1(1:3);
  min = eulidean(rgb,x2);
  index = 1;
  
  for i = 2:length(train_set)
    x1 = train_set(i,:);
    x2 = x1(1:3);
    result = eulidean(rgb,x2);
    if (result < min)
      min = result;
      index = i;
    end
  end
  
  y = train_set(index,:)(4);
            

endfunction