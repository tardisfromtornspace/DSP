function [X] = z_trans_finite(x,n) % x is the input sequence and n is the range of the discrete independent variable
    syms z
    X(z) = sum(x.* z.^(-n));
end



