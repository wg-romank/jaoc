in =: cutopen fread '2021/example4'

bingos =: {. in
bingos =: > ".L:0 ',' cut > bingos

boards =: > ".L:0 }. in
boards =: _5 ]\ boards


cross =: {{ +/"1 (0 2 1) |: (x="0 1"1]) ,"2 y }}
is_winner =: {{ *./"(1) _5(<./)\"1 y }}