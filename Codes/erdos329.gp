/*
If number of segments of n are even: 1...1
If number of segments of n are odd: 71...1
*/


SM(n) = {
    if (n % 2 == 0, return(n/2), return(7 + (n-3)/2));
}


{
Ne = 2023;
NN = 10^Ne;

Vs = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];
s09 = vecsum(Vs); s19 = s09 - Vs[1];

/*
Vn = vector(NN);
Vn[0+1] = Vs[0+1];
for (x = 1, NN-1,
    vx = digits(x);
    Vn[x+1] = sum(i = 1, #vx, Vs[vx[i]+1]);
);
Vsmn = vector(NN, i, SM(Vn[i]));
s = vecsum(Vsmn);
print(s);
*/

svn = vecsum(Vs);
for (k = 2, Ne,
    svn += s19*10^(k-1) + s09*9*10^(k-2)*(k-1);
);
s = svn / 2 + 11/2 * NN/2;
ans = sumdigits(s);
print(ans);
}
