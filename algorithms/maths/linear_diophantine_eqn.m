% Linear Diophantine Equation
%Given three integers a, b, c representing a linear equation of the form : ax + by = c. 
%To find if the equation has a solution such that x and y are both integral values.
%Used in programming to find the exact solution exists or not.

function retval = linear_diophantine_eqn (a,b,c)
   if mod(c,gcd(a,b))==0
     retval=true;            % 1 represent yes it exist
   else
     retval= false;          %  0 represent no it doesn't exist

end
