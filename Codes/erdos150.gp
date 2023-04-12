F(n, x) = ((2^n - 1)*(2^x - 1))/2;


{
s = F(29, 30) + F(30, 29);
ans = floor(s);
print(ans);
}
