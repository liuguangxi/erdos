/* OEIS A008937 */


{
v = vector(30);
v[1] = 1; v[2] = 2; v[3] = 4;
for (n = 4, 30, v[n] = v[n - 1] + v[n - 2] + v[n - 3] + 1);
print(v[30]);
}
