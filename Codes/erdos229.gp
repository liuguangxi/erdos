f(n) = {
    my(A, x0);
    if (n <= 3, return(Mod(n, M)));
    A = Mod([1, 2, 4; 1, 0, 0; 0, 1, 0], M);
    x0 = Mod([3, 2, 1], M)~;
    return([1,0,0]*A^(n-3)*x0);
}


{
M = 998244353;
N = 60;
K = 123456789987654321;

P = matrix(N, N, i, j, if (i < N, Mod(i+1==j, M), -f(2^(j-1))));
s = lift(trace(P^K));
print(s);
}
