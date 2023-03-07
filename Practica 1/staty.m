% Example: A function called “staty.m” that returns the mean and standard deviation of an input vector.
function [m,s, med] = staty(x)
    n = length(x);
    m = sum(x)/n;
    s = sqrt(sum((x-m).^2/n));
    B = sort(x);
    med = B(round(n./2));
end


