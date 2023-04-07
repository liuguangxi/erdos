{
Nmax = 10^6-1;
v = vector(Nmax);
for (i = 2, Nmax, v[i] = numdiv(i - 1));
vm = vecmax(v);
vans = List();
for (i = 2, Nmax, if (v[i] == vm, listput(vans, i)));
ans = concat(vector(#vans, i, Str(vans[i])));
print(ans);
}
