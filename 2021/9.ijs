
in =: "."0 > cutopen fread '2021/example9'

shifts =: }. 6 2 $ (, > ([,-)&.> 0 0;0 1;1 0)
s =: shifts|.!._("1 _) ]
low =: =~ [: <./"2 (1 0 2) |: s

p1 =: +/ 1+ (I.@:,@:low ]) { [:,]