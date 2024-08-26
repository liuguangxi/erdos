/* Calculate a^a^... mod m */
f(m) = {
    if (m == 1, return(0));
    return(lift(Mod(a, m)^f(eulerphi(m))));
}


{
n = 7908922576125228087;
a = 321298371289423;
ans = f(n);
print(ans);
}
