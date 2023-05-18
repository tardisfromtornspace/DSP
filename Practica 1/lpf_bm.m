function [y,n] = lpf_bm(x,n,L,wc) % x is the input sequence, L is the number of the weighted averaged samples and wc is the cut-off frequency. ac is a vector with the L-1 auxiliary conditions ac=[x[ni-1] … x[ni-(L-1)]]. Suppose ac=[0 … 0].
    % L is an odd number
    ac = zeros(1,L-1);
    x_aux = [ac x];
    y = zeros(1,length(x));

    k = 0:L-1;
    w_bm = 0.42-0.5*cos(2*pi*k/(L-1)) + 0.08 *cos(4*pi*k/(L-1));

    % matlab doesn't have the same sense of scope as C
    if mod (length(k),2) ~= 0  %sin(wc*(k2-(L-1)/2)) == 1
        % because for k = (L-1)/2, we have an indetermination 0/0:
        % we calculate one side, then the other, and the max in the middle,
        % then for k = (L-1)/2, we calculate by changing k to a continuous
        % variable "p" and applying L'Hôpital, we get lim x->0 sin(p)/p -->
        % cos(p)/1 ---> 1/1 = 1, then the sinc is wc/pi for that k 
      
        k2 = 0:((L-1)/2)-1;
        hi1 = sin(wc*(k2-(L-1)/2))./(pi*(k2-(L-1)/2));

        k3=((L-1)/2)+1:L-1;
        hi2 = sin(wc*(k3-(L-1)/2))./(pi*(k3-(L-1)/2));

        himax = wc/pi;
        hi=[hi1 himax hi2];
    else
        % for even ones it's simpler, since we don't have the
        % indetermination, we can just apply it normally.
        k2 = 0:L-1;
        hi1 = sin(wc*(k2-(L-1)/2))./(pi*(k2-(L-1)/2));
        hi= hi1;
    end

    h = w_bm.*hi;
    for i = 1:length(x)
        y(i) = sum(h.*x_aux(i:i+L-1));
    end
    stem(n,y)
end