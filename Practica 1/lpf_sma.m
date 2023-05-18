function [y,n] = lpf_sma(x,n,L)
    ac = zeros(1,L-1);
    x_aux = [ac x];
    y = zeros(1,length(x));
    for i = 1:length(x)
        y(i) = (1/L)*sum(x_aux(i:i+L-1));
    end
    stem(n,y)
end