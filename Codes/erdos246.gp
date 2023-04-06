{
N0 = 5; N = 10^10; A = 94069; B = 50549;
s = 0;
for (i = 0, B - 1,
    t = N - A * i; if (t < 0, break);
    s += t \ B + 1;
);
p = (s - 1) / (N - N0 + 1);
print(floor(p*10^12));
}
