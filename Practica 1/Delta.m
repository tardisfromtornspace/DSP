function[x,n] = Delta(n0,ni,nf) %unit impulse in n0, defined in ni:nf
    arguments
        n0(1,1) {mustBeNumeric, mustBeFinite}
        ni(1,1) {mustBeNumeric, mustBeFinite}
        nf(1,1) {mustBeNumeric, mustBeFinite}
    end
    n = ni:nf;
    x(nf-ni+1) = 0;
    % ALTERNATIVELY x = zeros(1, nf-ni+1);
    x(n0-ni+1) = 1;
    % return (x n);
end


