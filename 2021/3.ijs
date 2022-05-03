in =: > cutopen fread '2021/example3'

half =: 2 %~ # in
counts =: +/"1 '1' E."1 |: in

NB. a bit of a trick but
NB. since we are looking up '1'
NB. we want to set corresponding index to 1
p1 =: #. counts > half