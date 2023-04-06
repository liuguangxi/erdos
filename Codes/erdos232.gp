gen_pts(y) = {
    my(x = 2^30-1-y, vpt = List(), xi, yi);
    for (i = 0, 29,
        xi = x \ 2^i * 2^i; yi = y \ 2^i * 2^i;
        listput(vpt, [xi, yi]);
    );
    return(Vec(vpt));
}


{
v = [];
for (i = 0, 27,
    v = concat(v, gen_pts(123456789 + 32007316*i));
);
s = #Set(v);
print(s);
}
