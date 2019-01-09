{
Fib = vector(40, i, fibonacci(i));
x = readvec("E:/Project/Erdos/Problems/14.txt");
s = 0;
for (i = 1, #x,
    if (setsearch(Fib, x[i]) > 0, s++);
);
print(s);
}
