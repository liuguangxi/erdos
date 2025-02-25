{
N = 6154;
Amin = 9647; Amax = 78417;
Smin = Amin + Amax + (N-2)*Amin;
Smax = Amin + Amax + (N-2)*Amax;
ans = (Smin + Smax) * (Smax - Smin + 1) / 2;
print(ans);
}
