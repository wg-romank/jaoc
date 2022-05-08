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

NB. todo bug
p2_scrubber =: dyad define
  half =: 2 %~ # y 
  counts =: +/ y
  least =: x {"1 counts < half
  mask =: x {"1 (least E."0 y)
  if. (# y) > 1 do. (>: x) p2_scrubber (mask # y) else. y end.
)

prefixes_mc =: ]\ most_common
p2_ox_gen =: +/ in_nums * +/ prefixes_mc E."1 (|: in_nums)

p2 =: (#. (0 p2_scrubber in_nums)) * (#. p2_ox_gen)