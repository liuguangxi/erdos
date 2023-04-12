/*
OEIS A000254
F(n) = f(n) / (n-1)!
where f(n) = (n+1)!/2 * sum(k = 1, n, 1/k/(n+1-k)) =>
F(n) = n*(n+1)/2 * sum(k = 1, n, 1/k/(n+1-k))
*/


F(n) = {
    my(s);
    s = sum(k = 1, n, 1./k/(n+1-k));
    s *= n*(n+1)/2;
    return(s);
}


{
N = 12345678;
ans = floor(F(N));
print(ans);
}
