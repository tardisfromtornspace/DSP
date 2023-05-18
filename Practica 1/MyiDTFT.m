function [x, n] = MyiDTFT(F,N)
    if N < 0
        N = -N;
    end
    n = -N:N;

    x = int(F *exp(1i*n*symvar(F)),-pi,pi)/(2*pi);

    disp('DT Fourier Inverse Transform: ')
    x
    stem(n, x);

end