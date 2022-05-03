in =: ".@> cutopen fread '2021/example1'

p1 =: 2 ]\ in
p2 =: +/"1 (2 ]\ 3 ]\ in)

solve =: {{ +/ </"1 y }}

NB. to run

NB. ] solve p1
NB. ] solve p2