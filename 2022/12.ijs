in =: cutopen fread '2022/example12'
ro =: 1 i.~ > 'S'&e.L:0 in
co =: > 'S' i.L:0~ ro { in
el =: a. {~ 97+i.26
se =: 0 (<ro, co)} ]
hm =: se [: > el i.L:0"(_ 0) ]
hmin =: hm in
fi =: se ($ hmin) $ _

NB. sh =: 3 2 $ 0 0 , _1 0 , 0 _1
sh =: _1 0 ,. 0 _1
st =: [: <./"1 (1 2 0) |: sh |.!._ >:
mk =: [: (>./"1 - <./"1) (1 2 0) |: sh |.!.0 ]
ss =: (] <. st)

NB. dir =: 0 _1
NB. if can come from dir to this cell
NB. (1 >: -/)"1 (1 2 0) |: (0 0 ,. dir) |.!._ hmin