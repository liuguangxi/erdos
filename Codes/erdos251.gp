{
N = 12345678;
s = 0;
for (n = 1, N,
    if (numdiv(n) > 4 || isprimepower(n) >= 2, s++);
);
print(s);
}
