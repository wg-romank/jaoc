
in =: "."0 > cutopen fread '2021/example9'

shifts =: }. 6 2 $ (, > ([,-)&.> 0 0;0 1;1 0)
s =: {{ shifts|.!.x("1 _) y }}

low =: =~ [: <./"2 (1 0 2) |: _&s

p1 =: [: +/ 1+ (I.@:,@:low ]) { [:,]

mask =: -.@:(9=]) 
shp =: [: $ ] 
basins =: ] * (shp $ (+/\)@:,)
grow = {{ x * >."0/ 0&s y }}

NB. can also write this tacit madness
NB. grow =: [ * ([: (>."0/)@:(0&s) ])

p2 =: */ 3 {. \:~ #/.~ , (mask grow^:_ basins@:low) in