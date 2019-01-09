{
p = 0; q = 0;
for (x = 10000, 99999,
    if (sumdigits(x) == 41,
        q++;
        if (x % 11 == 0, p++);
    );
);
g = gcd(p, q);
p /= g; q /= g;
ans = q - p;
print(ans);
}
