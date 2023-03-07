function[y,m] = delay(x,n,n0) % x is the input signal and n0 is the delay
    arguments
        x
        n
        n0
    end
    
    if n0 == 0
        y = x;
        m = n;
    else
        z(abs(n0)) = 0;
        if n0 > 0
            m = (n(1)):(n(end)+n0);
            y = [z x];
        else
            m = (n(1)+n0):(n(end));
            y = [x z];
        end
    end
end


