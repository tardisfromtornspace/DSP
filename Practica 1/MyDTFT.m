function [F] = MyDTFT(x,n)
    syms w

    %ni = n(1);
    %nf = n(end); 

    %axis([ni,nf,0,2])

    F(w)= sum(x.*exp(-1i*w*n));
    %F(w)=simplify(F(w));
    disp('DT Fourier Transform: ')
    F(w)
    subplot(2,1,1); fplot((real(F).^2 + imag(F).^2).^(1/2),[-pi,pi]) % no reconoce las abs(F) para este caso, de forma extraña, probamos la definición
    subplot(2,1,2); fplot(phase(F),[-pi,pi]) %angle(F)

end