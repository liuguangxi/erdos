/*
(1) when n = 1, F(1, k) = 1
(2) when n > 1,
let n = p1^e1 * ... * pm^em (m >= 1, pi is prime, ei >= 1)
assume d1, ..., dr is divisors of 2^e1*3^e2*...*qk^ek (qk is the k-th prime),
A is a r*r matrix with entry A(i, j) = [di | dj]
u1 = [1, 0, ..., 0], u2 = [1, 1, ..., 1]'
F(n, k) = u1 * A^k * u2
*/


F(n, k) = {
    my(d, r, A, u1, u2, s);
    d = divisors(n); r = #d;
    A = Mod(matrix(r, r, i, j, d[j] % d[i] == 0), 1000000007);
    u1 = Mod(vector(r, i, i == 1), 1000000007);
    u2 = Mod(vector(r, i, 1)~, 1000000007);
    s = u1 * A^k * u2;
    return(s);
}


S(n, k) = {
    my(M, e, vm, len, s, vp, t);
    M = Map();
    for (x = 2, n,
        if (x % 1000000 == 0, print("x = ", x));
        e = vecsort(factor(x)[,2]~,,4);
        if (mapisdefined(M, e),
            mapput(M, e, mapget(M, e) + 1),
            mapput(M, e, 1);
        );
    );
    vm = Vec(M); len = #vm;
    print("#M = ", len);
    s = Mod(1, 1000000007);
    vp = primes(logint(n, 2));
    for (i = 1, len,
        e = vm[i];
        t = prod(j = 1, #e, vp[j]^e[j]);
        printf("i = %d, t = %d\n", i, t);
        s += F(t, k) * mapget(M, e);
    );
    return(s);
}


{
N = 98765432; K = 2345678;
ans = lift(S(N, K));
print(ans);
}
