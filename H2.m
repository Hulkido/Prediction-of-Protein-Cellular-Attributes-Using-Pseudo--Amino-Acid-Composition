%This function is for calculation of H2. let's assume that standared value
%of H2 comes from Hopp and woods in a form such that ith value of vector H_2(20*1) is
%hydrophilicity value for ith amino acid from group of 20 amino acid i.e
%6th value represent hydrophilicity value for G amino acid.
function h2=H2(i,H_2)%input arguments are i= no. of amino acid i.e 2 means amino acid is c and H_2 gives standared values of hydrophilicity as definded above. 
m=mean(H_2);% calculation mean beacause is helful in calculation of standared deviation.
num=H_2(i,1)-m;%mean deviation.
den=sqrt(sum(H_2-m));% standared deviation.
h2=num/den; % mean normalised value of hydrophilicity.