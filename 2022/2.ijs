in =: s: ' '-.~L:0 cutopen fread '2022/input2'
lk =: s:,{('A','B','C');('X','Y','Z')
NB. 3 3 $ lk
NB. `AX `AY `AZ
NB. `BX `BY `BZ
NB. `CX `CY `CZ
p1 =: 4 8 3 1 5 9 7 2 6
p2 =: 3 4 8 1 5 9 2 6 7
cp =: {{ +/ (lk i. y) { x }}
NB. tacit cp
NB. [: +/ [ {~ (lk i. ])
NB. ([: +/ ])@:({~ lk&i."_)