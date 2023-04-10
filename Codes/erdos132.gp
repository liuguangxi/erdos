/*
lim_{n->inf} {f(z)} = zeta(z)
lim_{m->inf} {g(z)} = 1/zeta(z)
=>
x = lim_{n,m->inf} {f(z)*g(z)} = zeta(z) * 1/zeta(z) = 1
sum(i = 1, k, [gcd(i, k) = x]) = phi(k)
*/


{
k = 354216846978542365;
ans = eulerphi(k);
print(ans);
}
