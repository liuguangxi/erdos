factpow(n, p) = {
    my(s = 0, x = p);
    while (x <= n, s += n \ x; x *= p);
    return(s);
}


{
x1 = -10101099; y1 = 127898755387;
x2 = 1137947000140424; y2 = 1607032990556;
dx = x2 - x1;
dy = y2 - y1;
n = gcd(dx, dy);
cost = Mod(factpow(n, 5), 10^9+7)^n;
ans = lift(cost);
print(ans);
}
