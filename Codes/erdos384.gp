/*
24 =>
  23
  1, 11
  2, 7
  3, 5
  1, 1, 5
  1, 2, 3
  1, 1, 1, 2
*/


vp(n, p) = {
    my(ret = 0);
    while (n >= p, n \= p; ret += n);
    return(ret);
}


{
M = 1000000007;
N = 314159;
L = primepi(N);
v = vector(L, i, vp(N, prime(i)));
s = 0;
c1 = L;
c2 = 0; for (i = 1, L, if (v[i] >= 2, c2++));
c3 = 0; for (i = 1, L, if (v[i] >= 3, c3++));
c5 = 0; for (i = 1, L, if (v[i] >= 5, c5++));
c7 = 0; for (i = 1, L, if (v[i] >= 7, c7++));
c11 = 0; for (i = 1, L, if (v[i] >= 11, c11++));
c23 = 0; for (i = 1, L, if (v[i] >= 23, c23++));

\\ 23
s += c23;

\\ 1, 11
s += 2 * binomial(c11, 2) + c11 * (c1 - c11);

\\ 2, 7
s += 2 * binomial(c7, 2) + c7 * (c2 - c7);

\\ 3, 5
s += 2 * binomial(c5, 2) + c5 * (c3 - c5);

\\ 1, 1, 5
s += 3 * binomial(c5, 3)
  +  2 * binomial(c5, 2) * (c1 - c5)
  +  c5 * binomial(c1 - c5, 2);

\\ 1, 2, 3
s += 6 * binomial(c3, 3)
  +  2 * binomial(c3, 2) * (c1 - c3) + 2 * binomial(c3, 2) * (c2 - c3)
  +  c3 * 2 * binomial(c2 - c3, 2) + c3 * (c2 - c3) * (c1 - c2);

\\ 1, 1, 1, 2
s += 4 * binomial(c2, 4)
  +  3 * binomial(c2, 3) * (c1 - c2)
  +  2 * binomial(c2, 2) * binomial(c1 - c2, 2)
  +  c2 * binomial(c1 - c2, 3);

ans = s % M;
print(ans);
}
