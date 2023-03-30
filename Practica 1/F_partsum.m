function [SF] = F_partsum(x,N)
    syms t
    Coef = F_coef(x,N);
    SF = Coef(N+1);
    for n=1:N
        SF = SF + Coef(N+1-n)*exp(i*(-n)*t) + Coef(N+1+n)*exp(i*n*t);
    end
    disp('Partial sum: ')
end




