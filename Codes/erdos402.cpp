#include <bits/stdc++.h>
using namespace std;

static inline int mod100(int x) {
    x %= 100;
    if (x < 0) x += 100;
    return x;
}

int main() {
    // Precompute solutions for: (coef * x) % 100 == r, for coef in [0..99], r in [0..99], x in [0..99]
    // Also precompute x in [10..99] for A3 (since A is 8-digit => A3 = 10*a1 + a2 has a1 != 0).
    array<array<vector<uint8_t>, 100>, 100> solAny;
    array<array<vector<uint8_t>, 100>, 100> sol10;
    for (int coef = 0; coef < 100; ++coef) {
        for (int r = 0; r < 100; ++r) {
            solAny[coef][r].clear();
            sol10[coef][r].clear();
        }
        for (int x = 0; x < 100; ++x) {
            int r = (coef * x) % 100;
            solAny[coef][r].push_back((uint8_t)x);
            if (x >= 10) sol10[coef][r].push_back((uint8_t)x);
        }
    }

    struct Stage0 {
        uint8_t A0, B0;
        uint16_t carry1;
        uint8_t P1; // (A0/10) * (B0/10)
    };
    vector<Stage0> stage0;
    stage0.reserve(10000);

    // Stage k=0 constraint:
    // S0 = A0*B0, P0 must equal (A0%10)*(B0%10), and also P0 == S0 % 100
    for (int A0 = 0; A0 < 100; ++A0) {
        int a8 = A0 % 10;
        int a7 = A0 / 10;
        for (int B0 = 0; B0 < 100; ++B0) {
            int b7 = B0 % 10;
            int b6 = B0 / 10;
            int P0 = a8 * b7;          // 0..81
            int prod = A0 * B0;        // 0..9801
            if (prod % 100 != P0) continue;
            int carry1 = prod / 100;   // 0..98
            int P1 = a7 * b6;          // 0..81
            Stage0 s;
            s.A0 = (uint8_t)A0;
            s.B0 = (uint8_t)B0;
            s.carry1 = (uint16_t)carry1;
            s.P1 = (uint8_t)P1;
            stage0.push_back(s);
        }
    }

    uint64_t totalSum = 0;

    // Main enumeration with heavy pruning via modular equations in base 100.
    for (const auto &s0 : stage0) {
        int A0 = s0.A0;
        int B0 = s0.B0;
        int carry1 = s0.carry1;
        int P1 = s0.P1;

        // k=1:
        // S1 = A0*B1 + A1*B0 + carry1
        // Need S1 % 100 == P1 (P1 fixed by A0,B0 tens-digits product)
        // Solve B0*A1 ≡ (P1 - carry1 - A0*B1) (mod 100)
        int rhs1_base = mod100(P1 - carry1);

        for (int B1 = 0; B1 < 100; ++B1) {
            int needA1 = mod100(rhs1_base - (A0 * B1) % 100);
            const auto &candA1 = solAny[B0][needA1];
            for (uint8_t A1u : candA1) {
                int A1 = (int)A1u;

                int S1 = A0 * B1 + A1 * B0 + carry1;
                if (S1 % 100 != P1) continue;
                int carry2 = S1 / 100;

                int P2 = (A1 % 10) * (B1 % 10);   // 0..81
                int P3 = (A1 / 10) * (B1 / 10);   // 0..81

                // k=2:
                // S2 = A0*B2 + A1*B1 + A2*B0 + carry2
                // Need S2 % 100 == P2
                int mid2 = A1 * B1 + carry2;
                int rhs2_base = mod100(P2 - (mid2 % 100));

                for (int B2 = 0; B2 < 100; ++B2) {
                    int needA2 = mod100(rhs2_base - (A0 * B2) % 100);
                    const auto &candA2 = solAny[B0][needA2];
                    for (uint8_t A2u : candA2) {
                        int A2 = (int)A2u;

                        int S2 = A0 * B2 + A2 * B0 + mid2;
                        if (S2 % 100 != P2) continue;
                        int carry3 = S2 / 100;

                        int P4 = (A2 % 10) * (B2 % 10);   // 0..81
                        int P5 = (A2 / 10) * (B2 / 10);   // 0..81

                        // Now choose B3 in [1..9] and A3 in [10..99]
                        // k=3:
                        // S3 = A0*B3 + A1*B2 + A2*B1 + A3*B0 + carry3
                        // Need S3 % 100 == P3
                        int known3 = A1 * B2 + A2 * B1 + carry3;

                        for (int B3 = 1; B3 <= 9; ++B3) {
                            int rem3 = mod100(P3 - ( (A0 * B3 + known3) % 100 ));
                            const auto &candA3 = sol10[B0][rem3]; // A3 in [10..99]

                            for (uint8_t A3u : candA3) {
                                int A3 = (int)A3u;

                                int S3 = A0 * B3 + A1 * B2 + A2 * B1 + A3 * B0 + carry3;
                                if (S3 % 100 != P3) continue;
                                int carry4 = S3 / 100;

                                // k=4:
                                // S4 = A1*B3 + A2*B2 + A3*B1 + carry4
                                // Need %100 == P4
                                int S4 = A1 * B3 + A2 * B2 + A3 * B1 + carry4;
                                if (S4 % 100 != P4) continue;
                                int carry5 = S4 / 100;

                                // k=5:
                                // S5 = A2*B3 + A3*B2 + carry5
                                // Need %100 == P5
                                int S5 = A2 * B3 + A3 * B2 + carry5;
                                if (S5 % 100 != P5) continue;
                                int carry6 = S5 / 100;

                                // k=6:
                                // S6 = A3*B3 + carry6
                                // Need %100 == P6, where P6 = (A3%10)*B3
                                int P6 = (A3 % 10) * B3; // 0..81
                                int S6 = A3 * B3 + carry6;
                                if (S6 % 100 != P6) continue;
                                int carry7 = S6 / 100;

                                // k=7:
                                // S7 = carry7, must equal P7 = (A3/10) (= a1), and must be 1..9
                                int P7 = A3 / 10; // 1..9 because A3 in [10..99]
                                if (carry7 != P7) continue;

                                // Construct A and B from base-100 digits:
                                // A = A3*100^3 + A2*100^2 + A1*100 + A0  (8-digit decimal)
                                // B = B3*100^3 + B2*100^2 + B1*100 + B0  (7-digit decimal)
                                uint64_t A = (uint64_t)A3;
                                A = A * 100 + (uint64_t)A2;
                                A = A * 100 + (uint64_t)A1;
                                A = A * 100 + (uint64_t)A0;

                                uint64_t B = (uint64_t)B3;
                                B = B * 100 + (uint64_t)B2;
                                B = B * 100 + (uint64_t)B1;
                                B = B * 100 + (uint64_t)B0;

                                // A is guaranteed 8-digit since A3 in [10..99].
                                // B is guaranteed 7-digit since B3 in [1..9] and represents the top decimal digit.
                                uint64_t prod = A * B;
                                cout << A << " * " << B << " = " << prod << endl;
                                totalSum += prod;
                            }
                        }
                    }
                }
            }
        }
    }

    // Output the answer (sum of A*B over all valid pairs).
    // (No need to run; included for completeness.)
    cout << totalSum << "\n";
    return 0;
}
