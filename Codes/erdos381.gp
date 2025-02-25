/*
(1)
V = t
M = 0

(2)
V += t/2*4/2 = t => V = 2*t
M += t => M = t

(3)
V += t/2^2*4^2/2 = 2*t => V = 4*t
M += 2*t => M = 3*t

(4)
V += t/2^3*4^3/2 = 4*t => V = 8*t
M += 4*t => M = 7*t

=>
V = 2^(k-1)*t, M = (2^(k-1)-1)*t
*/


{
MM = 1000000007;
Op = 319587138362;
M = Mod(2, MM)^(Op - 1) - 1; V = Mod(2, MM)^(Op - 1);
p = M; q = V;
ans = lift(3*p + 2*q);
print(ans);
}
