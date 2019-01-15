f(e, k) = {
    my(c, m, v0, s);
    c = vector(e+1, i, Mod(1, M));
    m = matrix(e+1, e+1, i, j, Mod(i >= j, M));
    v0 = vectorv(e+1, i, Mod(i == 1, M));
    s = c * m^(k-1) * v0;
    return(s);
}


{
M = 10^9+7;
N = 1101^17*2019^29;
K = 3*367*673;
ve = factor(N)[,2]~;
ans = prod(i = 1, #ve, f(ve[i], K));
print(lift(ans));
}
