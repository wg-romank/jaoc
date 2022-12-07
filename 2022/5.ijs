in =: cutopen fread '2022/example5'
vv =: _4 ({.@:}.)\ ]
cr =: |: <"0 vv @> 3 {. in

b =: <' '
shifts =: +/"1 b -:"0 cr

shifted =: shifts |."(0 1) cr
len =: # shifted

next =: 0 { iq
'hm fr to' =: next
NB. probably can be done with antibase cheaper
mask =: hm * fr = i.len

tm =: mask |.!.b"(0 1) shifted
mv =: hm {. fr { shifted
iter =: (to {. tm) , (len {. mv , to { tm) , ((to + 1) }. tm)

pr =: {{ ". > 1 3 5 { ;: y }}
iq =: 0 1 1 -"1~ pr @> 4 }. in