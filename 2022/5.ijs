in =: cutopen fread '2022/example5'
vv =: _4 ({.@:}.)\ ]
cr =: |: <"0 vv @> 3 {. in

b =: <' '
find_shift =: [: +/"1 b -:"0 ]

shift =: find_shift |."(0 1) ]

next =: 0 { iq
NB. hm =: {.
NB. fr =: {.@:}.
NB. to =: }.@:}.
NB. mask =: (hm * i.len = fr) next

process =: dyad define 
  NB. probably can be done with antibase cheaper
  len =: # x
  'hm fr to' =: y
  mask =: hm * fr = i.len
  move =: hm {. fr { x
  prefix =: to {. ]
  updated =: move , to { ]
  suffix =: (to + 1) }. ]

  left =: mask |.!.b"(0 1) x
  (prefix , updated , suffix) left
)

pr =: {{ ". > 1 3 5 { ;: y }}
iq =: 0 1 1 -"1~ pr @> 4 }. in