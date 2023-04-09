/*
x^6 + x^3 + x^3*y = 147^157 =>
(x^3 + 1) * (x^3 + y) = 3^157*7^314 =>
(x^3 + 1) | 3^157*7^314 =>
3^k1*7^k2 - 1 is perfect cube (0 <= k1 <= 157, 0 <= k2 <= 314)

x^3 + x^3*y + y^2 + y + z^9 = 157^147 =>
z^9 = 157^147 - (x^3 + x^3*y + y^2 + y)
*/


{
solxy = List();
for (k1 = 0, 157, for (k2 = 0, 314,
    m = 3^k1*7^k2 - 1;
    x = sqrtnint(m, 3);
    if (x^3 == m,
        y = 147^157 / (3^k1*7^k2) - x^3;
        listput(solxy, [x, y]);
    );

    m = -3^k1*7^k2 - 1;
    x = -sqrtnint(-m, 3);
    if (x^3 == m,
        y = 147^157 / (-3^k1*7^k2) - x^3;
        listput(solxy, [x, y]);
    );
));

n = 0;
for (i = 1, #solxy,
    [x, y] = solxy[i];
    z9 = abs(157^147 - (x^3 + x^3*y + y^2 + y));
    z = sqrtnint(z9, 9);
    if (z^9 == z9,
        n++; print([x, y, z]);
    );
);

s = 10^(frac(134*log(n+exp(1))/log(10)));
ans = floor(s * 10^5);
print(ans);
}
