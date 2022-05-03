in =: cutopen fread '2021/example2'
words =: |: ;: @> in

actions =: s: {. words
amounts =: ".@> {: words

fw =: (s:' forward') E. actions
bw =: (s:' backward') E. actions
up =: (s:' up') E. actions
dw =: (s:' down') E. actions

fb =: amounts * fw - bw
du =: amounts * dw - up

p1 =: (+/ fb) * (+/ du)

course =: +/\ du
p2 =: +/ course * fb