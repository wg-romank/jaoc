NB. in =: 16 1 2 0 4 2 7 1 2 14
in =: ". , > ;: fread '2021/input7'

max =: >./ in

p1 =: <./ +/"1 | (i.max) -"(0 _) in