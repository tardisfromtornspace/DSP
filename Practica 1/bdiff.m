function [y,m] = bdiff(x,n,ac) % x is the input signal and ac is the auxiliary condition x[-1].
    arguments
        x
        n
        ac
    end
    m = n;
    y(length(x)) = 0;
    y(1) = x(1)-ac;
    for a=2:length(x)
        y(a) = x(a)-x(a-1);
    end
end


