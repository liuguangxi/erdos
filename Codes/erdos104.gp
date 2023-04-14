/*
For N sides polygon:
a + b + c = N, 0 < a <= b <= c, a + b > c
(1) a = b = c, s = N / 3 when N mod 3 = 0 else s = 0
(2) a = b < c or a < b = c, s = #{(a, b, c)} * N
    a = b < c => N/4 <= a < N/3 =>
    #{(a, b, c)} = ceil(N/3) - ceil(N/4)
    a < b = c => 1 <= a < N/3 and a = N (mod 2) =>
    #{(a, b, c)} = floor((ceil(N/3)-1 + N%2) / 2)
(3) a < b < c, s = #{(a, b, c)} * (2*N)
    max(a, N/2-a) < b < (N-a)/2 =>
    #{(a, b, c)} = sum(a = 1, floor(N/4), ceil((N-a)/2)-1-(floor(N/2)-a)) +
                   sum(a = floor(N/4)+1, floor(N/3)-1, ceil((N-a)/2)-1-a)
*/


{
N = 628318531;

\\ (1) a = b = c
if (N % 3 == 0, s = N / 3, s = 0);

\\ (2) a = b < c or a < b = c
s += (ceil(N/3) - ceil(N/4)) * N;
s += floor((ceil(N/3)-1 + N%2) / 2) * N;

\\ (3) a < b < c
s0 = (-2*floor((1 - N)/2) + ceil((1 - floor(N/4))/2)*(1 - ceil((1 - floor(N/4))/2) + 2*floor((1 - N)/2)) - floor(N/3)*(1 + floor(N/3)) + 2*floor(N/4)*(1 + floor(N/4) - floor(N/2)) + (-1 + 2*ceil(N/2) - floor(floor(N/4)/2))*floor(floor(N/4)/2) -
     2*floor((-N + floor(N/4))/2) + ceil((3 + floor(N/4) - floor(N/3))/2)*(3 - ceil((3 + floor(N/4) - floor(N/3))/2) + 2*floor((-N + floor(N/4))/2)) -
     floor((-floor(N/4) + floor(N/3))/2)*(-1 + 2*floor((1 - N + floor(N/4))/2) + floor((-floor(N/4) + floor(N/3))/2)))/2;
s += s0 * 2*N;

p = s / binomial(N, 3);
ans = p * 2 * (2 * floor(Pi * 10^8) - 1);
print(ans);
}
