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

scrub =: dyad define
  half =. 2 %~ # y 
  counts =. +/ y
  least =. x {"1 counts < half
  mask =. x {"1 (least E."0 y)
  if. (# mask # y) > 1 do. (>: x) scrub (mask # y) else. mask # y end.
)

ox =: dyad define
  half =. 2 %~ # y 
  counts =. +/ y
  least =. x {"1 counts >: half
  mask =. x {"1 (least E."0 y)
  if. (# mask # y) > 1 do. (>: x) ox (mask # y) else. mask # y end.
)

p2 =: (#. (0 scrub in_nums)) * (#. (0 ox in_nums))