/*
Consider D25 = (d24,d23,...,d1,d0) in range [0, 10^25-1]
d_i mod 2 = 1, D25 mod 5^25 = 5^5
b_k = 5^25*k+5^5 mod 10^25, k >= 0
and the period of b_k is 2^25
let C = number of b_k s.t. every digit of b_k is odd

N = 10^9+7
d_{N-1}, ..., d25 are all odd
number is CN = 5^(N-25)

A = C * CN
*/


{
C = 0;
M = 5^25;
D25min = 5^5+M*2;
D25max = 5^5+M*(2^25-1);
forstep (D25 = D25min, D25max, M*4,
    x = D25; flg = 1;
    for (i = 1, 25,
        if ((x % 10) % 2 == 0, flg = 0; break);
        x \= 10;
    );
    if (flg,
        C++; print("D25 = ", D25);
    );
);

N = 10^9+7;
CN = Mod(5, N)^(N-25);

A = C * CN;
ans = lift(A);
print(ans);
}
