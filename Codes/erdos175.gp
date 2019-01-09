/* F(n) = G(n) = fibonacci(n+2) */


F(n) = {
    my(M, m, x0, x);
    M = 1000000007;
    m = Mod([1, 1; 1, 0], M);
    x0 = [1, 1]~;
    x = m^n*x0;
    return(lift(x[1]));
}

G(n) = F(n);


{
ans = G(F(100000007));
print(ans);
}
