/*
S(n) = sum(d | n, phi(d)) = n
F(n) = sum(x = 1, n, S(x)) = n*(n+1)/2
*/


F(n) = n*(n+1)/2;


{
ans = F(999999) + F(888888);
print(ans);
}
