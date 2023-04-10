{
n = 1000;
x = n;
forstep (i = n, 1, -1, x = 1/x + (i - 1));
pn = numerator(x);
qn = denominator(x);
ans = pn * qn % 1000000007;
print(ans);
}
