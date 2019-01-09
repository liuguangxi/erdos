/*
Assume f(x) = a6*x^6 + a5*x^5 + a4*x^4 + a3*x^3 + a2*x^2 + a1*x + a0
f(2) = f(0) = f(1) = f(5) = n and f(−2) = f(−1) = f(−5) = −n
we can get matrix equation A * a = b
*/


{
x = [2, 0, 1, 5, -2, -1, -5];
A = matrix(7, 7, i, j, x[i]^(7-j));
b = [n, n, n, n, -n, -n, -n]~;
a = A^(-1)*b;
q = vector(7, i, denominator(polcoeff(a[i],1)));
ans = lcm(q);
print(ans);
}
