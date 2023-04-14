/*
angle(An-O-A0) = fibonacci(n) mod 360 (degree)
*/


{
N = 12345678987654321;
A = Mod([1, 1; 1, 0], 360);
ans = lift([0, 1] * A^N * [1, 0]~);
print(ans);
}
