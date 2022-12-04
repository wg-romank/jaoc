in =: ;: @> cutopen fread '2022/input4'
e1 =: ". > 0 2 {"1 in
e2 =: ". > 4 6 {"1 in
id =: 1 = ((_1 0 + [) I. ])
cp =: {{ [: +/ (u@:id +. u@:id~)"1 }}
p1 =: *./ cp
p2 =: +./ cp