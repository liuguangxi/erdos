{
N = 42;
vp = vector(N, i, (42/i)^i*1.);
ans = floor(vecmax(vp));
print(ans);
}
