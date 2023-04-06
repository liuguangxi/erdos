/*
S(n) = 2, 4, 7, 12, 20, 33, 54, 88, 143, 232, ...
=> S(n) = 2*S(n-1) - S(n-3)
*/


Sref(n) = {
    my(s);
    s = sum(k = 0, n\2, sum(n = 2*k, n, binomial(n - k, k)));
    return(s);
}


S(n) = {
    my(M = 10^9+7, m, x0, s);
    m = Mod([2, 0, -1; 1, 0, 0; 0, 1, 0], M);
    x0 = Mod([7, 4, 2]~, M);
    s = m^(n - 3)*x0;
    return(lift(s[1]));
}


{
N = 10^18;
ans = S(N);
print(ans);
}
