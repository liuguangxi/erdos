{
s = 0;
for (p1 = 2, 5,
    for (p2 = 1, 6, if (p2 == 2, next);
        for (p3 = 1, 6, if (p3 == 3, next);
            for (p4 = 1, 6, if (p4 == 4, next);
                for (p5 = 1, 6, if (p5 == 5, next);
                    if (#Set([p1, p2, p3, p4, p5]) == 5,
                        s++;
                    );
                );
            );
        );
    );
);
print(s);
}
