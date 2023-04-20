function [F] = MyFourier(x,a,b)
    % Fourier Transform
    syms w
    % the output and input of fourier is symbolic
    F(w) = fourier(x);
    clc
    disp('Fourier Transform: ')
    F(w)=simplify(F(w))
    subplot(2,1,1);
    % Module
    fplot(abs(F),[a,b])
    subplot(2,1,2);
    % System Identification Toolbox is needed for phase()
    fplot(phase(F),[a,b])

end




