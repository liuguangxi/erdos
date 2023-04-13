{
N = 10^7;
s = 0;
for (i = 1, N,
    if (bigomega(i) == 2, s += i);
);
print(s);
}
