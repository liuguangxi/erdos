/*
According to Carmichael Theorem
x = 12

when p = 2 => q^m = 2
when p >= 3 => p = 2^m - 1
*/


{
s = 2;
m = 2; p = 2^2-1;
while (p < 10^12,
    if (isprime(p), s += p);
    m++; p = 2^m - 1;
);
print(s);
}
