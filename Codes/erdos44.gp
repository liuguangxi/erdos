/*
a^b mod 10 = (a mod 10)^b mod 10
k mod 10 = lift(Mod(4128, 10)^6 + Mod(6, 10)^4128) = 0
=> k^n mod 10 = 0
eulerphi(10) = 4, k mod 4 = lift(Mod(4128, 4)^6 + Mod(6, 4)^4128) = 0
=> n^k mod 10 = (n mod 10)^(k mod 4 + 4) mod 10 = (n mod 10)^4 mod 10
*/


{
N = 17040384;
ans = (N \ 10) * sum(n = 1, 10, (n % 10)^4 % 10);
ans += sum(n = 1, N % 10, (n % 10)^4 % 10);
print(ans);
}
