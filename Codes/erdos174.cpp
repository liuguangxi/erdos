/*
s = sum(n = l, r, binomial(f(n), k))
where f(n) = fibonacci(n + 2)
fibonacci mod 1000000007 period is 2000000016

s = sum(n = 3, 10^18+2, binomial(fibonacci(n), 200)) mod 1000000007
  = sum(n = 3, 10^18+2, binomial(fibonacci(n) mod 1000000007, 200)) mod 1000000007
*/


#include <bits/stdc++.h>
using namespace std;


using ll = long long;
constexpr int M = 1000000007;
constexpr int P = 2 * M + 2;
constexpr ll L = 1000000000000000000LL;
vector<int> Tab(M);    // Tab[n] = n*(n-1)*...*(n-199)


// returns a^(-1) (mod m), a in [1, m-1] and gcd(a, m) = 1
int modinv(int a, int m)
{
    int j = 1, i = 0, b = m, c = a, x, y;
    while (c) {
        x = b / c;
        y = b - x * c;
        b = c;
        c = y;
        y = j;
        j = i - j * x;
        i = y;
    }
    if (i < 0)    i += m;
    return i;
}


void init()
{
    for (int i = 0; i < 200; i++)    Tab[i] = 0;
    ll t = 1;
    for (int i = 1; i <= 200; i++)    t = (t * (ll)i) % M;
    Tab[200] = (int)t;
    for (int i = 201; i < M; i++) {
        t = (t * (ll)i) % M;
        t = (t * (ll)modinv(i - 200, M)) % M;
        Tab[i] = (int)t;
    }
    cout << "init done" << endl;
}


void solve()
{
    ll sp = 0;
    int a = 1, b = 1, f;
    for (int i = 1; i <= P; i++) {
        f = (a + b) % M;
        sp = (sp + Tab[f]) % M;
        a = b;
        b = f;
    }
    cout << "sp done" << endl;

    ll cp = (L / P) % M;
    ll s = sp * cp % M;
    int r = L % P;
    a = 1;
    b = 1;
    for (int i = 1; i <= r; i++) {
        f = (a + b) % M;
        s = (s + Tab[f]) % M;
        a = b;
        b = f;
    }

    s = (s * modinv(Tab[200], M)) % M;
    cout << s << endl;
}


int main()
{
    init();
    solve();
    return 0;
}
