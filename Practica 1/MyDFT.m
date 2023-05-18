function [X] = MyDFT(x,n)
    N=length(x);
    syms k
    X(k)= sum(x.*exp(-1i*k.*2*pi*n/N));

    subplot(2,1,1); stem(n,abs(X(n))) %stem(n, sqrt(real(X(n))^2+imag(X(n))^2)
    subplot(2,1,2); stem(n,angle(X(n)))
end