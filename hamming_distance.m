% Here x is a row vecter of size (20+lembda) and X is  matrix of size (20+lembda)*m where each column i represents standared vector 
%for a particular ith subset of proteins.
function d=hamming_distance(x,X)
d=sum(abs(x-X),1);  %d will be row vector containg hamming distance from standared vectors of subsets as a column entry and is of 1*m shape.