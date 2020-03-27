%This function is for calculation of M. let's assume that standared value
%of M comes from let Biochemistry book in a form such that ith value of vector M_(20*1) is
%Mass value for ith amino acid from group of 20 amino acid i.e
%6th value represent Mass value for G amino acid.
function m=M(i,M_)%input arguments are i= no. of amino acid i.e 2 means amino acid is c and M_ gives standared values of Mass as definded above. 
m=mean(M_);% calculation mean beacause is helful in calculation of standared deviation.
num=M_(i,1)-m;%mean deviation.
den=sqrt(sum(M_-m));% standared deviation.
m=num/den; % mean normalised value of Mass.