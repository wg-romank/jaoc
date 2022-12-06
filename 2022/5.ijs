in =: fread '2022/example5'
NB. {.@:}.
NB. _4 ]\
vv =: _4 ({.@:}.)\ ]
cr =: |: ]@> ((vv)L:0) 3 {. cutopen in
is =: 4 }. cutopen in
iq =: 0 1 1 -"1~ > ".L:0 > (1 3 5 { ])@:;:L:0 is