/* OEIS A033184 */
a(n, i) = i/(2*n-i) * binomial(2*n-i, n);

f(n) = sum(i = 1, n, a(n, i)^2);


{
N = 10;
b = vector(N);
b[1] = 1; b[2] = 6;
for (i = 3, N, b[i] = 6*b[i - 1] - b[i - 2]);
ans = sum(i = 1, 10, f(i) * b[i]);
print(ans);
}
