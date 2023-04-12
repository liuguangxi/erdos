/* 0 < a <= b */
F(a, b) = {
    my(r1, r2, r3);
    r1 = a;
    r3 = min(sqrt(a^2 + b^2) - r1, a);
    r2 = min(b - r1, a - r3);
    return(1/4*Pi*(r1^2+r2^2+r3^2));
}


S(a, x) = sum(b = a, x, F(a, b));


{
s = S(4, 1000);
ans = floor(s);
print(ans);
}
