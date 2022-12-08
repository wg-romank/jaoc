in =: cutopen fread '2022/input5'
nl =: 8 NB. need to adjust

parse_c =: _4 ({.@:}.)\ ]
crates =: |: <"0 parse_c @> nl {. in

parse_i =: {{ ". > 1 3 5 { ;: y }}
instructions =: 0 1 1 -"1~ parse_i @> (>: nl) }. in

find_shift =: [: +/"1 (<' ') -:"0 ]
shift =: find_shift }."(0 1) ]

crane =: adverb define
  NB. probably can be done with antibase cheaper
  'hm fr to' =: y
  move =: u hm {. fr { x
  prefix =: to {. ]
  updated =: move , to { ]
  suffix =: (>:to) }. ]

  mask =: hm * fr = i. # x
  left =: mask |.!.b"(0 1) x
  (prefix , updated , suffix) left
)

nexti =: [: {. [
resti =: [: }. [
non_empty =: 0 < [: # [
run =: {{ resti $:^:non_emptyl (] (u)crane nexti) }}
cp =: {{ > {. |: instructions (u)run shift crates }}

part1 =: |.cp
part2 =: [cp