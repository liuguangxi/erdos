{
N = 12345678910;
M = 998244353;
a = precprime(N);
fa = a^2;
ans = fa % M;
print(ans);
}
