function [x,n] = RandomSequence(maxval,minval,ni,length) %rectangular pulse defined 1n ni:nf and takes the value 1 from n1 to n2.
    arguments
        maxval(1,1) {mustBeNumeric, mustBeFinite} % max range value
        minval(1,1) {mustBeNumeric, mustBeFinite}
        ni(1,1) {mustBeNumeric, mustBeFinite}
        length(1,1) {mustBeNumeric, mustBeFinite, mustBePositive}
    end
    nf = ni+length-1;
    n = ni:nf;
    xt = rand (1, nf-ni+1)
    x = xt * (maxval-minval) + minval;

end


