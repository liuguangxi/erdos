#include <cstdio>
#include <cmath>
#include <cstring>
#include <ctime>
#include <algorithm>
#include <queue>

using namespace std;

struct Node {int x, y;};

const long double Eps = 1e-14;
const int Dir[4][2] = {0, 1, 0, -1, 1, 0, -1, 0};
int N, M;
char Str[40][40];
bool Flag[40][40];
int L;
int Tab[1250];
long double Mat[1250][1250];


bool is_inmat(int x, int y)
{
    if (x < 0 || y < 0 || x >= N || y >= M)
        return false;
    return true;
}


int sgn(long double x)
{
    return (x > Eps) - (x < -Eps);
}


long double gauss()
{
    int k, max_r, col;

    for (k = col = 0; k < L && col < L; ++k, ++col) {
        max_r = k;
        for (int i = k + 1; i < L; ++i) {
            if (sgn(fabs(Mat[i][col]) - fabs(Mat[max_r][col])) > 0)
                max_r = i;
        }
        if (max_r != k) {
            for (int i = k; i <= L; ++i)
                swap(Mat[max_r][i], Mat[k][i]);
        }
        if (sgn(Mat[k][col]) == 0) {
            --k;
            continue;
        }
        for (int i = k + 1; i < L; ++i) {
            if (sgn(Mat[i][col]) != 0) {
                long double tx = (Mat[i][col] / Mat[k][col]);
                for (int j = col; j <= L; ++j)
                    Mat[i][j] -= tx * Mat[k][j];
            }
        }
    }

    return Mat[L-1][L] / Mat[L-1][L-1];
}


long double calc()
{
    int sx = 0, sy = 0;
    int ex = 0, ey = 0;
    queue<Node> qu;
    Node node, node2;

    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if (Str[i][j] == 'H') {
                sx = i;    sy = j;
            }
            if (Str[i][j] == 'X') {
                ex = i;    ey = j;
            }
        }
    }

    memset(Flag, 0, sizeof(Flag));
    node.x = sx;
    node.y = sy;
    qu.push(node);
    while (!qu.empty()) {
        node = qu.front();
        qu.pop();
        for (int i = 0; i < 4; ++i) {
            node2.x = node.x + Dir[i][0];
            node2.y = node.y + Dir[i][1];
            if (!is_inmat(node2.x, node2.y))    continue;
            if (Str[node2.x][node2.y] == 'D')    continue;
            if (!Flag[node2.x][node2.y]) {
                Flag[node2.x][node2.y] = true;
                qu.push(node2);
            }
        }
    }
    if (!Flag[ex][ey])    printf("H->X error!\n");

    memset(Tab, 0, sizeof(Tab));
    L = 0;
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if ((i == sx && j == sy) || (i == ex && j == ey))    continue;
            if (Flag[i][j])    Tab[i*M+j] = L++;
        }
    }
    Tab[ex*M+ey] = L++;
    Tab[sx*M+sy] = L++;

    memset(Mat, 0, sizeof(Mat));
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if (Flag[i][j]) {
                if (i == ex && j == ey) {
                    Mat[Tab[i*M+j]][Tab[i*M+j]] = 1;
                } else {
                    int c = 0;
                    for (int k = 0; k < 4; ++k) {
                        int xx = i + Dir[k][0];
                        int yy = j + Dir[k][1];
                        if (!is_inmat(xx, yy) || !Flag[xx][yy])    continue;
                        Mat[Tab[i*M+j]][Tab[xx*M+yy]] = 1;
                        ++c;
                    }
                    Mat[Tab[i*M+j]][Tab[i*M+j]] = -c;
                    Mat[Tab[i*M+j]][L] = -c;
                }
            }
        }
    }

    long double e = gauss();
    printf("N = %d, M = %d, E = %.10Lf\n", N, M, e);
    return e;
}


int main()
{
    clock_t t0 = clock();
    long double s = 0;

    freopen("137.txt", "r", stdin);

    while (~scanf("%d%d", &N, &M)) {
        for (int i = 0; i < N; ++i)
            scanf("%s", Str[i]);
        s += calc();
    }

    printf("P = %.8Lf\n", s);
    printf("floor(P * 10^3) = %d\n", (int)(s*1000));

    printf("Elapsed time is %.3f s\n", 1.0 * (clock() - t0)/CLOCKS_PER_SEC);

    return 0;
}
