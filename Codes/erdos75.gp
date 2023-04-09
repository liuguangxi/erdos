{
s = 0;
for (x = 10000, 99999,
    d = digits(x);
    if (isprime(x), next);
    if (isprime(x \ 10) || isprime(x % 10000), next);
    if (isprime(d[1]*100+d[2]*10+d[3]) || isprime(d[2]*100+d[3]*10+d[4]) || isprime(d[3]*100+d[4]*10+d[5]), next);
    if (isprime(d[1]*10+d[2]) || isprime(d[2]*10+d[3]) || isprime(d[3]*10+d[4]) || isprime(d[4]*10+d[5]), next);
    if (isprime(d[1]) || isprime(d[2]) || isprime(d[3]) || isprime(d[4]) || isprime(d[5]), next);
    s += x;
);
print(s);
}
