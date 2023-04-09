/*
S(n, k) = sum(i = 0, k, (-1)^i*binomial(k, i)*(n-i)!)
        = sum(i = 0, k, (-1)^i * k!*(n-i)!/i!/(k-i)!)
Let a(i) = k!*(n-i)!/i!/(k-i)!
a(k) = (n-k)!, a(k-1) = k*(n-k-1) * a(k), ...
a(i) = (i+1)*(n-i)/(k-i) * a(i+1)
*/


S(n, k, p) = {
    my(s, x);
    x = (-1)^k * prod(i = 1, n - k, Mod(i, p));
    s = x;
    forstep (i = k - 1, 0, -1,
        x *= -(i+1)*(n-i)/(k-i);
        s += x;
    );
    return(lift(s));
}


{
ans = S(654321, 123456, 10^9+7);
print(ans);
}
