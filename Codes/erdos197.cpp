/*
chinese(Mod(617437961, 1000000007), Mod(177686120, 1000000009)) = Mod(719875930656569436, 1000000016000000063)
*/


#include <atcoder/all>
#include <bits/stdc++.h>
using namespace atcoder;
using namespace std;


constexpr int M = 1000000007;
//constexpr int M = 1000000009;
constexpr int N = 123456789;
constexpr int K = 9;
using mint = static_modint<M>;


int extend(int n)
{
    int x = 1;
    for (; x <= n; x <<= 1);
    return x;
}


template <typename T>
void fwt_xor(vector<T> &a, bool rev = false)
{
    int n = a.size();
    T inv2 = T(1) / T(2);
    for (int l = 2, m = 1; l <= n; l <<= 1, m <<= 1) {
        for (int j = 0; j < n; j +=l) {
            for (int i = 0; i < m; i++) {
                T x = a[i + j];
                T y = a[i + j + m];
                if (!rev) {
                    a[i + j] = x + y;
                    a[i + j + m] = x - y;
                } else {
                    a[i + j] = (x + y) * inv2;
                    a[i + j + m] = (x - y) * inv2;
                }
            }
        }
    }
}


void solve()
{
    int L = extend(N);
    cout << "L = " << L << endl;
    vector<mint> v(L);
    for (int i = 0; i <= N; i++) v[i] = 1;
    fwt_xor(v, false);
    for (auto &x : v) x = x.pow(K);
    fwt_xor(v, true);
    cout << "Mod(" << v[N].val() << ", " << M << ")" << endl;
}


int main()
{
    solve();
    return 0;
}
