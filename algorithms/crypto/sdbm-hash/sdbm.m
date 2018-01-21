% sdbm: implements the sdbm-hash algorithm
% argument: str of type string
% returns: double
function ans = sdbm(str)
  hash = 0;
  for ch = str
    hash = double(ch) + bitshift(hash,6) + bitshift(hash,16) - hash;
  endfor
  ans = hash;
endfunction