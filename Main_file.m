%{
since a lot of values are missing and hence i am  writing code in commented form..

x=feature_vector(R,H_1,H_2,M,lembda,w);     %done so to get feature vector for a particular protein.
d=hamming_distance(x,X);           %hamming distace from all standared vectors is calculated any other distance leaving covarientdiscriminent will work in same mannner.
[v,i]=min(d);     % i will show index of min distance hence given protein belongs to ith subset.

%}

% for covarient discriment we have below approach required thing is
% S1S2,....,Sm.
%{

x=feature_vector(R,H_1,H_2,M,lembda,w);      %first step will remain same.
xi=(1/N)*sum([n1,n2,n3.......nm].*X,2);
C1=(1/(n1-1))*(S1-xi)*(s1-xi)';
C2=(1/(n2-1))*(S2-xi)*(s2-xi)';
.
.
.
.
Cm=(1/(nm-1))*(Sm-xi)*(sm-xi)';
d1=covarientdiscriminent(x,mean(C1,2),C1);
d2=covarientdiscriminent(x,mean(C2,2),C2);
.
.
.
.
.
.
dm=covarientdiscriminent(x,mean(Cm,2),Cm);
d=[d1,d2,........dm];
[v,i]=min(d);     % i will show index of min distance hence given protein belongs to ith subset.

%}