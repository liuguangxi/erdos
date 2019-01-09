s1(n) = n*(n+1)/2;

s(n) = {
    my(dmax = sqrtnint(n, 3));
    return(sum(d = 1, dmax, moebius(d)*d^3*s1(n\d^3)));
}


{
ans = s(123456789123456789) % 1000000007;
print(ans);
}
