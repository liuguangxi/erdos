/*
G(n) = 2^(2^n) + 1 (mod 9) =>
G(n) = 5, 8, 5, 8, ...
*/


{
N = 999999999999;
ans = (N \ 2) * (5 + 8);
if (N % 2 == 1, ans += 5);
print(ans);
}
