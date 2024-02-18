{
vx = vector(222, i, if (i <= 111, 9, 3));
x = fromdigits(vx);
x2 = x^2;
vx2 = digits(x2);
vc = vector(10); for (i = 1, #vx2, vc[vx2[i]+1]++);
print("#x^2 = ", #vx2);
print("dig freq = ", vc);
ans = vecsum(vx);
print(ans);
}
