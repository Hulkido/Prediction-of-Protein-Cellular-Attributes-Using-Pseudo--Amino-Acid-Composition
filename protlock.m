% In this part we will determine similarity between two vectors based upon
%  protlock algorithm. One import thing in this part is to determine C and
%  C inverse but for finding C we need full data of subsets of S i.e
%  S1,S2......Sm is required or give direct value of C So, we have two
%  condition 1st where information about S1,S2,......Sm is given or have to
%  give values of C and X matrix of size (20+lembda)*m where each column of
%  X represents standared vector for m subsets of set S.We will discuss the
%  case where we have been given with C and X and will discuss the another
%  case theoritically at last of this function.
function d=protlock(x,C,X)
d=sum(((x-X)'*pinv(C))'.*(x-X));
%d will be row vector containg portlock value from standared vectors of subsets as a column entry and is of 1*m shape.
%Note : formula given for a particular example is (x-X)'*pinv(c)*(x-X) but
%if we want to calculate all distances in one go above imlementation is
%done.


%If information about S1,S2,.......Sm is given then mean(Si,2) will give us
%value of standared vector for ith subset and stacking them coloumn vise
%give us X matrix about which is mentioned already. And to calculate C we
%have to calculate xi which is xi=(1/N)*sum([vector containg column no of
%each S matrix].*X,2).after that to calculate individual C we
%Ci=(Si-xi)*(si-xi)' these Ci are useful while calculating covarient
%descriminent algorithm now C=(C1+C2+......+Cm)/N so we have both C and X
%and hence as given above we can calculate protlock value for every set.