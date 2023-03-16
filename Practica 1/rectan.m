function [x,n] = rectan(n1,n2,ni,nf)

    n = ni:nf;
    x=zeros(1,nf-ni+1);
    x(n1-ni+1:n2-ni+1)=1;
    stem(n,x)
    
end
