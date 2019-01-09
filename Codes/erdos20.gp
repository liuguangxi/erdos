{
s = 0;
K = 19;
for (x = 2^K, 2^(K+1)-1,
    v5 = digits(x, 2)[2..K+1];
    v7 = vector(K, i, 1) - v5;
    d = fromdigits(concat(5*v5+7*v7, 5));
    if (d % 7 == 0, s++);
);
print(s);
}
