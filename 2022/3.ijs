al =: ((96 + i.27) , (65 + i.26)) { a.
in =: cutopen fread '2022/input3'
is =: [ -. -.  NB. intersection
hl =: [: -: #
me =: [: (hl ({. is }.) ])L:0 al i.L:0 ]
p1 =: {{ +/ > ~.L:0 me y }}
p2 =: {{ +/ al i. (~.@:is/@:>"1) _3 ]\ y }}