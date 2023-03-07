function [y,m] = acc_LDE(x,n,ac) % x is the input sequence starting at n0=n(1) and ac is the auxiliary condition y[n0-1].
    y(1) = ac - x(1);
    for i=2:length(n)
        y(i) = y(i-1) + x(i);
    end
    m = n;
    stem(m,y) 
end



