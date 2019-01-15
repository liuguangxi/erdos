{
n = 0;
while (1,
    n++;
    if (eulerphi(n) == eulerphi(n+1) && eulerphi(n+1) == eulerphi(n+2), break);
);
print(n % 1729);
}
