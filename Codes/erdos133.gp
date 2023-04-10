/*
Absorbing Markov chains
transition matrix is P = [Q_nxn, R_nx1; 0_1xn, 1]
for n > 1, Q(1,2) = 1/2, Q(n,n-1) = 1, Q(i,i-1) = Q(i,i+1) = 1/2 (1 < i < n)
and R(1) = 1/2, R(i) = 0 (i > 1)
F(i, N) = i-th entry of (matid(N) - Q)^(-1) * vector(N, i, 1)~
*/


S(n) = {
    my(Q, c, N, t);
    Q = matrix(n, n);
    Q[1, 2] = 1/2;
    for (i = 2, n - 1, Q[i, i-1] = Q[i, i+1] = 1/2);
    Q[n, n-1] = 1;
    c = vector(n, i, 1)~;
    N = (matid(n) - Q)^(-1);
    t = N * c;
    return(vecsum(t));
}


{
/*
S = 1, 7, 22, 50, 95, 161, 252, 372, 525, 715, ... =>
S(n) = 4*S(n-1) - 6*S(n-2) + 4*S(n-3) - S(n-4)
*/

A = [4, -6, 4, -1; 1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0];
x1 = [50, 22, 7, 1]~;
N = 10^7;
s = A^(N-1)*x1;
ans = s[4];
print(ans);
}
