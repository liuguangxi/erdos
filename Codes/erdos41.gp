/* Number of occurrences of the digit 1 in [1, n] */
f(n) = {
    my(s = 0, d, k);
    if (n <= 0, return(0));
    if (n < 10, return(1));
    d = digits(n);
    k = #d - 1;
    if (d[1] == 1,
        s += k * 10^(k-1) + n % 10^k + 1,
        s += d[1]*k * 10^(k-1) + 10^k;
    );
    s += f(n % 10^k);
    return(s);
}


{
n1 = 123456789;
n2 = 1234567890;
ans = f(n2) - f(n1 - 1);
print(ans);
}
