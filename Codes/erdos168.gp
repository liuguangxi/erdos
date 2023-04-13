/*
f(i, j) = sum(k = 1, j, (i*k) mod j) = j * (j - gcd(i, j)) / 2
E = 1/N * sum(i = 1, N, sum(j = 1, N, f(i, j)))
*/


{
N = 1111;
ans = sum(i = 1, N, sum(j = 1, N, j^2 - j*gcd(i, j))) / 2 / N;
print(floor(ans));
}
