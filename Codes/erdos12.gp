{
x = readvec("E:/Project/Erdos/Problems/12.txt");
maxgap = 0;
for (i = 1, #x,
    if (isprime(x[i]),
        g = nextprime(x[i] + 1) - x[i];
        if (g > maxgap, maxgap = g);
    );
);
print(maxgap);
}
