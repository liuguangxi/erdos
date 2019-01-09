/*
x(i−1) + k/x(i−1) = k*x(i) + 1/x(i) =>
x(i) = 1/x(i-1) or x(i-1)/k =>
when m is odd, xm = k^a/x0 = x0 (1-m <= a <= m-1) =>
x0(k, m) = k^((m-1)/2)
*/


{
s = 0;
k = 2;
m = 59;
while (k <= m,
    s += k^((m-1)/2);
    k++; m -= 2;
);
print(s);
}
