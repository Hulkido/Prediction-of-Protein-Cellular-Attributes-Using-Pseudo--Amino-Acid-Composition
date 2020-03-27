%This function is for calculation of H1. let's assume that standared value
%of H1 comes from Tanford in a form such that ith value of vector H_1(20*1) is
%hydrophobicity value for ith amino acid from group of 20 amino acid i.e
%6th value represent hydrophobicity value for G amino acid.
function h=H1(i,H_1)%input arguments are i= no. of amino acid i.e 2 means amino acid is c and H_1 gives standared values of hydrophobicity as definded above. 
m=mean(H_1);% calculation mean beacause is helful in calculation of standared deviation.
num=H_1(i,1)-m;%mean deviation.
den=sqrt(sum(H_1-m));% standared deviation
h=num/den; % mean normalised value of hydrophobicity.