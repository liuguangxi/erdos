{
N = 1000;
s = 0;
for (i = 1, N,
    bi = N^2 - (i^2-1) - ((N-i+1)^2-1);
    s += bi;
);
print(s);
}
