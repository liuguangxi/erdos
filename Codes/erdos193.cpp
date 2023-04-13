#include <bits/stdc++.h>
using namespace std;


using ll = long long;
constexpr int M = 4999;
constexpr int N = 4999;
double E[M + 1][N + 1];


void solve()
{
    for (int j = 0; j <= N; j++)    E[0][j] = 0;
    for (int i = 1; i <= M; i++)    E[i][0] = i;
    for (int i = 1; i <= M; i++) {
        for (int j = 1; j <= N; j++) {
            double e = (double)i/(i+j)*(1+E[i-1][j]) + (double)j/(i+j)*(-1+E[i][j-1]);
            if (e < 0)    e = 0;
            E[i][j] = e;
        }
    }

    double k = E[M][N];
    printf("E(%d, %d) = %.10f\n", M, N, k);
    ll ans = (ll)(k * 10000) * 123456;
    cout << ans << endl;
}


int main()
{
    solve();
    return 0;
}
