function [y,n] = lpf_r(x,n,L,wc)
    % L is an odd number
    ac = zeros(1,L-1);
    x_aux = [ac x];
    y = zeros(1,length(x));
    w_r = ones(1,L);
    m = 0:((L-1)/2)-1;
    hi1 = sin(wc*(m-(L-1)/2))./(pi*(m-(L-1)/2));
    himax = wc/pi;
    m=((L-1)/2)+1:L-1;
    hi2 = sin(wc*(m-(L-1)/2))./(pi*(m-(L-1)/2));
    hi=[hi1 himax hi2];
    h = w_r.*hi;
    for i = 1:length(x)
        y(i) = sum(h.*x_aux(i:i+L-1));
    end
    stem(n,y)
end