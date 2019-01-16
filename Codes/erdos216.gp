{
d = 10;
c = 2/d/Pi;
eI = 1*c;
eO = (2*Pi*0.5)*c;
eN = (1+2+1)*c;
p = 677*eO + 733*eN + 779*eI;
ans = floor(p*10^5);
print(ans);
}
