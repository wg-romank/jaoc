
in =: "."0 > cutopen fread '2021/example9'

neighboors =: }. 6 2 $ (, > ([,-)&.> 0 0;0 1;1 0)
shift =: {{ neighboors|.!.x("1 _) y }}

low =: = [: <./"2 (1 0 2) |: _&shift

p1 =: [: +/ 1+ ([: I.@:, low) { ,

NB. shp =: [: $ ] -> $
basins =: * ($ $ ([: +/\ ,))
grow =: * ([: >."0/ 0&shift)
mask =: [: -. 9=]
layout =: mask grow^:_ basins@:low

size =: [: \:~ (#/.~)@:,
NB. or
NB. size =: {{ \:~ #/.~ , y }}

p2 =: [: */ 3 {. size@:layout