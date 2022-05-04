in =: > cutopen fread '2021/example3'

half =: 2 %~ # in
in_nums =: '1' E."1 in
counts =: +/ in_nums
most_common =: counts > half
least_common =: -. most_common

NB. a bit of a trick but
NB. since we are looking up '1'
NB. we want to set corresponding index to 1
p1 =: #. most_common

prefixes =: ]\ most_common