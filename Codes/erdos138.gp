/*
O(n^(3/4))

f(n) = sum(1 <= a, b, c, d <= n, [a * b * c * d <= n])
     = 24*f1(n) - 12*f2(n) - 18*f3(n) - 20*f4(n) - 23*f5(n)

where
f1(n) = sum(1 <= a <= b <= c <= d <= n, [a * b * c * d <= n])
      = sum(a = 1, n^(1/4), sum(b = a, (n/a)^(1/3), sum(c = b, (n/(a*b))^(1/2), sum(d = c, n/(a*b*c), 1))))
      = sum(a = 1, n^(1/4), sum(b = a, (n/a)^(1/3), sum(c = b, (n/(a*b))^(1/2), n\(a*b*c) - c + 1)))

f2(n) = sum(1 <= a = b < c < d <= n, [a * b * c * d <= n])
      + sum(1 <= a < b = c < d <= n, [a * b * c * d <= n])
      + sum(1 <= a < b < c = d <= n, [a * b * c * d <= n])
      = sum(a = 1, n^(1/4), sum(c = a+1, (n/a^2)^(1/2), n\(a^2*c)-c))
      + sum(a = 1, n^(1/4), sum(b = a+1, (n/a)^(1/3), n\(a*b^2) + floor((n\(a*b))^(1/2)) - 2*b))

f3(n) = sum(1 <= a = b < c = d <= n, [a * b * c * d <= n])
      = sum(a = 1, n^(1/4), floor((n/a^2)^(1/2)) - a)

f4(n) = sum(1 <= a = b = c < d <= n, [a * b * c * d <= n])
      + sum(1 <= a < b = c = d <= n, [a * b * c * d <= n])
      = sum(a = 1, n^(1/4), n\a^3 + floor((n/a)^(1/3)) - 2*a)

f5(n) = sum(1 <= a = b = c = d <= n, [a * b * c * d <= n]) = floor(n^(1/4))
*/


f1(n) = {
    my(s = 0, amax, bmax, cmax);
    amax = sqrtnint(n, 4);
    for (a = 1, amax,
        printf("f1 : a = %d\n", a);
        bmax = sqrtnint(n \ a, 3);
        for (b = a, bmax,
            cmax = sqrtint(n \ (a*b));
            for (c = b, cmax,
                s += n\(a*b*c) - c + 1;
            );
        );
    );
    return(s);
}


f2(n) = {
    my(s = 0, amax, bmax, cmax);
    amax = sqrtnint(n, 4);
    for (a = 1, amax,
        cmax = sqrtint(n \ a^2);
        for (c = a + 1, cmax,
            s += n\(a^2*c) - c;
        );
    );
    for (a = 1, amax,
        bmax = sqrtnint(n \ a, 3);
        for (b = a + 1, bmax,
            s += n\(a*b^2) + sqrtint(n\(a*b)) - 2*b;
        );
    );
    return(s);
}


f3(n) = {
    my(s, amax);
    amax = sqrtnint(n, 4);
    s = sum(a = 1, amax, sqrtint(n\a^2) - a);
    return(s);
}


f4(n) = {
    my(s, amax);
    amax = sqrtnint(n, 4);
    s = sum(a = 1, amax, n\a^3 + sqrtnint(n\a, 3) - 2*a);
    return(s);
}


f5(n) = sqrtnint(n, 4);


f(n) = 24*f1(n) - 12*f2(n) - 18*f3(n) - 20*f4(n) - 23*f5(n);


{
N = 10^12;
ans = f(N);
print(ans);
}
