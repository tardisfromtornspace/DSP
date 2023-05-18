function [y,n] = lpf_hm(x,n,L,wc)
    % L is an odd number
    ac = zeros(1,L-1);
    x_aux = [ac x];
    y = zeros(1,length(x));
    i = 0:L-1;
    w_h = 0.54-0.46*cos(2*pi*i/(L-1));
    m = 0:((L-1)/2)-1;
    hi1 = sin(wc*(m-(L-1)/2))./(pi*(m-(L-1)/2));
    himax = wc/pi;
    m=((L-1)/2)+1:L-1;
    hi2 = sin(wc*(m-(L-1)/2))./(pi*(m-(L-1)/2));
    hi=[hi1 himax hi2];
    h = w_h.*hi;
    for i = 1:length(x)
        y(i) = sum(h.*x_aux(i:i+L-1));
    end
    stem(n,y)
end