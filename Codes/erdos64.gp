{
for (m = 1, 10,
    M = matrix(3*m+1, 3*m+1, i, j, (i-1)^(3*m+1-j));
    b = vector(3*m+1, i, 2-(i-1)%3)~;
    a = M^(-1)*b;
    x = vector(3*m+1, i, (3*m+1)^(3*m+1-i));
    res = x * a;
    if (res == 6562, ans = m; break);
);
print(ans);
}
