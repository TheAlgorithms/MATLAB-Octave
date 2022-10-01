%This function acts as a calculator
%It takes the input 1: add 2:subtract 3: multiply 4: divide 
  
  function [a]=calc(x,y,z)
    if z==1
    a=x+y;
  elseif z==2
    
    a=x-y;
  elseif z==3
    
    
    a=x*y
  else
    
    a=x/y;
    
  end
