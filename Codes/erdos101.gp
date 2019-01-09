powfact(n, p) = {
    my(s = 0, x = p);
    while (x <= n, s += n \ x; x *= p);
    return(s);
}


powbino(n, m, p) = {
    return(powfact(n, p) - powfact(m, p) - powfact(n - m, p));
}


{
a0 = powbino(66, 24, 3);
a1 = powbino(73, 27, 2);
a2 = powbino(3280, 1367, 3);
a3 = powbino(3712, 2005, 2);
a4 = powbino(14348, 7519, 2);
a5 = 16;
a6 = 19;
a = [a0, a1, a2, a3, a4, a5, a6];

/*
http://oeis.org/A191406
a(n) = A001951(n)+A001951(n+2)
A001951(n) = floor(n*sqrt(2))
*/

n = 67;
ans = floor(n*sqrt(2)) + floor((n+2)*sqrt(2));
print(ans);
}
