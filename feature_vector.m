%given a R vector and H_1,H_2,M and lembda this function will return entire
%feature vector for a particulat protein. Here R vecotr will be of a
%arbitary length let l and contain intizer ranging from 1 to 20 showing the
%occurence and position of a partiular amino acid.Here we need w as a
%dealing factor between frequency factor and corelating factor.
function x=feature_vector(R,H_1,H_2,M,lembda,w)
%processing R to calculate frequency of each amino acid.
b=tabulate(R);% this will return a matrix and second coloumn of this matrix will give us frequency.
x1=b(:,2);%second coloumn gives first 20 element of feature vector.
%for next lembda elements we need to have relation between them as designed
%in theta function.
x2=zeros(lemda,1);
for i=1:lemda
    for j=1:i:(size(R,1)-i)
        x2(i,1)=x2(i,1)+theta(j,j+i,H_1,H_2,M_)
    end
    x2(i,1)=(1/(size(R,1)-i))*x2(i,1)    
end
sum_=sum(x1)+w*sum(x2);
x1=x1/sum_;
x2=(w/sum_)*x2;
x=[x1;x2];
