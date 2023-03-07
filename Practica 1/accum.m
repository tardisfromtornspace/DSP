function [y,m] = accum(x,n) % x is the input signal.
    arguments
        x
        n
    end
    m = n;
    y = cumsum(x(:));
end


