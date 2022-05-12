
in =: "."0 > cutopen fread '2021/example9'

mask =: -. in = 9
shp =: $ in
shifts =: }. 6 2 $ (, > ([,-)&.> 0 0;0 1;1 0)
s =: {{ shifts|.!.x("1 _) y }}
low =: =~ [: <./"2 (1 0 2) |: _&s

p1 =: [: +/ 1+ (I.@:,@:low ]) { [:,]

basins_w_nums =: (low in) * shp $ +/\ , low in
grow =: mask * ([: >."0/ 0&s)

p2 =: */ 3 {. \:~ #/.~ , grow^:_ basins_w_nums