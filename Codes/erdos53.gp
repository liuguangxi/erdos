{
v = List();
for (n1 = 1, 5, for (n2 = 1, 2, for (n3 = 1, 7, for (n4 = 1, 8, for (n5 = 1, 7, for (n6 = 1, 4, for (n7 = 1, 6,
    listput(v, vecsort([n1, n2, n3, n4, n5, n6, n7]));
)))))));
ans = #Set(v);
print(ans);
}
