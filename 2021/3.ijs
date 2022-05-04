in =: > cutopen fread '2021/example3'

half =: 2 %~ # in
in_nums =: '1' E."1 in
counts =: +/ in_nums
most_common =: counts > half
least_common =: -. most_common

NB. a bit of a trick but
NB. since we are looking up '1'
NB. we want to set corresponding index to 1
p1 =: (#. most_common) * (#. least_common)

prefixes_mc =: ]\ most_common
prefixes_lc =: ]\ least_common

NB. tough
NB. +/ in_nums * +/ prefixes_mc E."1 (|: in_nums)
