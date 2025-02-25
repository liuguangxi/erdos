/*
Ref. PE867
S(d) = f(d - 1, d)
f(0, n) = f(n, 0) = 1    <- regular 6-sided polygon
f(a, b) = f(a - 1, b) + f(a, b - 1)    <- regular 12-sided polygon with (a,b,a,b,a,b,a,b,a,b,a,b)
=>
S(n) = binomial(2*n - 1, n)
*/


{
M = 1000000007;
D = 391489;
s = Mod(1, M);
for (i = 1, D, s *= (2*D-i) / i);
print(lift(s));
}
