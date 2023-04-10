/*
g(n) = phi(n) =>
S(n) = sum(i = 1, n, phi(n)) = >
S(n) = n*(n+1)/2 - sum(i = 2, n, S(n\i))
     = n*(n+1)/2 - (sum(i = 2, sqrtint(n), S(n\i)) + sum(x = 1, n\(sqrtint(n)+1), (n\x - n\(x+1))*S(x))
*/


S(n) = {
    my(s, imax, xmax);
    if (mapisdefined(M, n), return(mapget(M, n)));
    s = n*(n+1)/2;
    imax = sqrtint(n);
    xmax = n\(sqrtint(n)+1);
    for (i = 2, imax, s -= S(n \ i));
    for (x = 1, xmax, s -= (n\x - n\(x+1))*S(x));
    mapput(M, n, s);
    return(s);
}


{
N = 10000000000;
M = Map();
s = S(N);
ans = s % 2^64;
print(ans);
}
