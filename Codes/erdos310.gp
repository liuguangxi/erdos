/* #{d : 1 <= d <= bnd, gcd(d, x) = 1} */
f(bnd, x) = {
    my(ret = 0);
    fordiv (x, d, ret += moebius(d) * (bnd \ d));
    return(ret);
}


{
A = 131003220303;
B = 251203160303;
X = 273;
M = 61074397;
res = (f(B, X) - f(A - 1, X)) % M;
print(res);
}
