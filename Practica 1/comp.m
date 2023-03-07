function [y,m] = comp(x,n,F) % x is the input sequence and F is the compression factor.
    arguments
        x
        n
        F
    end
    m = (floor(n(1)/F)):(floor(n(end)/F));
    startPos = 1;
    if n(1) < 0 && n(end) >= 0
        startPos = find(n==0); 
    end
    a1= 1;
    aux = zeros(1, length(m));
    %y(round(startPos/F))=x(startPos);
    while (startPos - (F * a1)) >= 1
        aux(a1) = x(-F*a1 + startPos);
        %y(round(startPos/F) + a) = x(F*a + startPos);
        a1 = a1 +1;
    end
    ladoDerecho = fliplr(aux(1:a1-1));
    a1 = 1;
    aux2 = zeros(1, length(m));
    while (startPos + F * a1) <= length(x)
        aux2(a1) = x(F*a1 + startPos);
        %y(round(startPos/F) + a) = x(F * a + startPos);
        a1 = a1 + 1;
    end
    ladoIzquierdo = aux2(1:a1-1);
    y = [ladoDerecho x(startPos) ladoIzquierdo];
    
    stem(m, y)
end