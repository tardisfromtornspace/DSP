function [y,m] = sma(x,n,M,ac) % x is the input sequence and M+1 is the number of samples averaged and ac are the M auxiliary conditions.
    arguments
        x
        n
        M
        ac
    end
    m = n;
    y = zeros(1, length(x));
    aux = [ac x];
    if M > length(ac)
        M = length(ac)
    end
    for a=1:length(x)
        y(a) = sum(aux(a-M+length(ac):a+length(ac)))/(M+1);
    end
end


