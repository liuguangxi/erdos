{
M = 1000000007;
x = 310842209572055;
y = 42082520835355;
g = gcd(x, y);
xx = x / g; yy = y / g;
S = g * yy * (yy - 1) / 2 * g;
ans = S % M;
print(ans);
}
