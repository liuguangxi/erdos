{
for (c9 = 0, logint(77*9, 9),
    for (c8 = 0, logint(77*9, 8),
        for (c7 = 0, logint(77*9, 7),
            for (c6 = 0, logint(77*9, 6),
                for (c5 = 0, logint(77*9, 5),
                    for (c4 = 0, logint(77*9, 4),
                        for (c3 = 0, logint(77*9, 3),
                            for (c2 = 0, logint(77*9, 2),
                                c1 = 77 - c9 - c8 - c7 - c6 - c5 - c4 - c3 - c2;
                                if (9*c9 + 8*c8 + 7*c7 + 6*c6 + 5*c5 + 4*c4 + 3*c3 + 2*c2 + c1 == 9^c9*8^c8*7^c7*6^c6*5^c5*4^c4*3^c3*2^c2,
                                    v = [c9, c8, c7, c6, c5, c4, c3, c2, c1, 0];
                                );
                            );
                        );
                    );
                );
            );
        );
    );
);

ans = fromdigits(v % 10);
print(ans);
}
