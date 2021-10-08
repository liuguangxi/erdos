/*
D(x) = sum(i = 2, Inf, x^i/i!)
s = [x^n/n!](D(x)^k/k!)
*/


{
M = 10^9+7;
N = 100;
K = 25;
D = sum(i = 2, N, Mod(1, M) * x^i / i!) + O(x^(N+1));
s = lift(polcoef(D^K / K!, N) * N!);
print(s);
}
