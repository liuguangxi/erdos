{
a = 98765;
s = (3 * a)^2;
s1 = (3 * a)^2 - Pi*(3 * a)^2/4;
s2 = (2 * a)^2 - Pi*(2 * a)^2/4;
s3 = Pi*(2*a)^2/4 - (a^2-Pi*a^2/4);
s4 = a^2;
sred = s - s1 - s2 - s3 - s4;
print(floor(sred));
}
