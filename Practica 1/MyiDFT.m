function [x] = MyiDFT(X,k) % X is the symbolic function of X(k)
    N=length(k); % lengths of X(omega) and X(k) match
    syms n
    x(n) = (1/N) * sum(X(k).*exp(1i.*n.*2.*pi.*k/N));
end