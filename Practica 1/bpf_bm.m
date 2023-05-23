function [y,n] = bpf_bm(x,n,L,wi,wf)

    % L is an odd number
    ac = zeros(1,L-1);
    x_aux = [ac x];
    y = zeros(1,length(x));
    wc = (wf-wi)/2;
    w0 = (wf+wi)/2;
    
    i = 0:L-1;
    w_b = 0.42-0.5*cos(2*pi*i/(L-1))+0.08*cos(4*pi*i/(L-1));

    m = 0:((L-1)/2)-1;
    hi1 = sin(wc*(m-(L-1)/2))./(pi*(m-(L-1)/2));
    himax = wc/pi;
    m=((L-1)/2)+1:L-1;
    hi2 = sin(wc*(m-(L-1)/2))./(pi*(m-(L-1)/2));
    hi=[hi1 himax hi2];
    
    h = 2*cos(w0*i).*w_b.*hi;

    for i = 1:length(x)
        y(i) = sum(h.*x_aux(i:i+L-1));
    end
    stem(n,y)

end
