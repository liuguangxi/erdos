/*
Let a(n) = sum(k = 0, n, d(n, k)), b(n) = sum(k = 0, n\2, o(n-k, k))
A(x) = sum(i >= 0, a(i)*x^i), B(x) = sum(i >= 0, b(i)*x^i)
=>
A(x) = prod(i >= 1, 1+x^i)
B(x) = 1/prod(i >= 1, 1-x^(2*i))
=>
F(x) = sum(i >= 0, f(i)*x^i) = A(x)*B(x)
= prod(i >= 1, 1+x^i)/prod(i >= 1, 1-x^(2*i))
= 1/prod(i >= 1, 1-x^i)
=>
f(n) = p(n), where p(n) is the unrestricted partition function
*/


{
M = 998244353;
N = 10000;
ans = sum(i = 1, N, Mod(numbpart(i), M)^2);
print(lift(ans));
}
