{
r = 357;
v = vector(7, i, r * exp(I*(i-1)/7*2*Pi));
S = sum(i = 1, 6, sum(j = i + 1, 7, norm(v[i] - v[j])));
print(round(S));
}
