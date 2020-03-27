%irrespective of others where we have calculated values for all subsets in
%one go here we will do it for individual set.Here X is a roe vector not a
%matrix and C is for a particular set.C for individual set can be
%calculated from explanation given at the end of protlock.
function d=covarientdiscriminent(x,X,C)
d=(x-X)'*pinv(C)*(x-X); %here d is just  a value not a  vector.