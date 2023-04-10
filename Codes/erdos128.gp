/*
Let zi = exp(xi), then sum(i = 1, 30, ai*zi) = 321123
Let f(zi, lambda) = sum(i = 1, 30, zi^2) + lambda*(sum(i = 1, 30, ai*zi) - 321123)
df/dzi = 0, df/dlambda = 0 =>
Let K = 321123/sum(i = 1, 30, zi^2), zi = K*zi
Z = sum(i = 1, 30, zi^2) = 321123^2/sum(i = 1, 30, zi^2)
yi = xi = log(zi)
*/


{
a = vector(30, i, fibonacci(i));
K = 321123 / sum(i = 1, 30, a[i]^2);
z = vector(30, i, K*a[i]);
Z = 321123^2 / sum(i = 1, 30, a[i]^2);
y = log(z);
k = vecsum(y)^4 / Z;
ans = floor(100*k);
print(ans);
}
