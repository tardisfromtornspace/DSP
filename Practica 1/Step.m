function[x,n] = Step(n0,ni,nf) %unit step defined in ni:nf and takes the value 1 from n0.
    arguments
        n0(1,1) {mustBeNumeric, mustBeFinite}
        ni(1,1) {mustBeNumeric, mustBeFinite}
        nf(1,1) {mustBeNumeric, mustBeFinite}
    end
    n = ni:nf;
    x(nf-ni+1) = 0;
    x(n0-ni+1:nf-ni+1) = 1;
end


