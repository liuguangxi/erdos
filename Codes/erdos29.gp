/*
a(n) = binomial(2*n, n)

((2207 + 987*sqrt(5))/2)^(1/16) + ((24476 - 10946*sqrt(5))/2)^(1/21) = 1/2*(1 + sqrt(5)) + 1/2*(1 - sqrt(5)) = 1
......
*/


{
ans = sum(n = 1, 60, binomial(2*n, n) * 1);
print(ans);
}
