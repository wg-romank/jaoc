in =: cutopen fread '2022/example5'
vv =: _4 ({.@:}.)\ ]
nl =: 3
cr =: |: <"0 vv @> nl {. in

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
  move =: |. hm {. fr { x
  prefix =: to {. ]
  updated =: move , to { ]
  suffix =: (to + 1) }. ]

  left =: mask |.!.b"(0 1) x
  (prefix , updated , suffix) left
)

NB. (field) process (iq)

NB. y -> field
NB. x -> instructions
headl =: [: {. [
taill =: [: }. [
non_emptyl =: 0 < [: # [
run =: taill $:^:non_emptyl (] process headl)

pr =: {{ ". > 1 3 5 { ;: y }}
iq =: 1 {. 0 1 1 -"1~ pr @> (>: nl) }. in

part1 =: > {. |: iq run shift cr