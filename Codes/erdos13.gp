{
forprime(x = 10123456789,,
    d = Set(digits(x));
    if (d == [0..9], ans = x; break);
);
print(ans);
}
