function [Coef] = F_coefT(x,N,T)
    syms t 
    Coef = [];
    for n=-N:N
        Coef = [Coef int(x(t)*exp(-i*n*2*pi*t/T),-T/2,T/2)/T];
    end
    disp('Coefficients: ')
    Coef
end




