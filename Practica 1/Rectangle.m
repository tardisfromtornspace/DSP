function [x,n] = Rectangle(n1,n2,ni,nf) %rectangular pulse defined 1n ni:nf and takes the value 1 from n1 to n2.
    arguments
        n1(1,1) {mustBeNumeric, mustBeFinite}
        n2(1,1) {mustBeNumeric, mustBeFinite}
        ni(1,1) {mustBeNumeric, mustBeFinite}
        nf(1,1) {mustBeNumeric, mustBeFinite}
    end
    n = ni:nf;
    x(nf-ni+1) = 0;
    x(n1-ni+1:n2-ni+1) = 1;
end


