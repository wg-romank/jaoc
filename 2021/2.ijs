in =: cutopen fread '2021/example2'
words =: |: > ;: &.> in

actions =: s: {. words
amounts =: > ".&.> {: words

parse_action =: {{ (s:' ',x) E. y }}

fw =: 'forward' parse_action actions
bw =: 'backward' parse_action actions
up =: 'up' parse_action actions
down =: 'down' parse_action actions

hoz =: +/ amounts * fw - bw
vez =: +/ amounts * down - up

p1 =: hoz * vez