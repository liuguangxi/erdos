{
s = 0;
forprime(p = 1, 10^9, s += sumdigits(p));
print(s);
}
