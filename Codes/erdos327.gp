/*
Let a_m = 4/Pi * Integrate(1/(exp(x)+exp(-x))^(2*m+1), 0 <= x <= inf), m >= 0
=>
OGF of a is A(x) = 2/sqrt(4-x)
=>
a_m = binomial(m-1/2,m)/4^m = (2*m-1)!!/m!/8^m
*/


{
N = 696969;
P = 1234567891;
s = Mod(1, P);
t = Mod(1, P);
for (m = 1, N,
    t *= (2*m-1)/(m*8);
    s += t;
);
ans = lift(s);
print(ans);
}
