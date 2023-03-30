function [Coef] = F_coef(x,N)
    syms t 
    Coef = []; %zeros(1, 2 *N+1);
    %i = 1;
    for n=-N:N
       Coef = [Coef int(x(t)*exp(-1i*n*t),-pi,pi)/(2*pi)];
       %Coef(i) = [int(x(t)*exp(-1i*n*t),-pi,pi)/(2*pi)];
       %i = i +1;
    end
    disp('Coefficients: ')
end




