in =: cutopen fread '2022/input5'
vv =: _4 ({.@:}.)\ ]
nl =: 8 NB. need to adjust
cr =: |: <"0 vv @> nl {. in

pr =: {{ ". > 1 3 5 { ;: y }}
iq =: 0 1 1 -"1~ pr @> (>: nl) }. in

find_shift =: [: +/"1 (<' ') -:"0 ]
shift =: find_shift }."(0 1) ]

process =: adverb define
  NB. probably can be done with antibase cheaper
  len =: # x
  'hm fr to' =: y
  mask =: hm * fr = i.len
  move =: u hm {. fr { x
  prefix =: to {. ]
  updated =: move , to { ]
  suffix =: (to + 1) }. ]

  left =: mask |.!.b"(0 1) x
  (prefix , updated , suffix) left
)

headl =: [: {. [
taill =: [: }. [
non_emptyl =: 0 < [: # [
run =: {{ taill $:^:non_emptyl (] (u)process headl) }}
cp =: {{ > {. |: iq (u)run shift cr }}

part1 =: |.cp
part2 =: [cp