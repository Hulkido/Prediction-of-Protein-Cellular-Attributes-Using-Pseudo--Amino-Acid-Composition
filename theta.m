%This function will calculate particular value of theta based on given value
%of i,j and H_1, H_2 and M_. 
function Q=theta(i,j,H_1,H_2,M_)
Q=(1/3)*((H1(i,H_1)-H1(j,H_1))^2+(H2(i,H_2)-H2(j,H_2))^2+(M(i,M_)-M(j,M_))^2);