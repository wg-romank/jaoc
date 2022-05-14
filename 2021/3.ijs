in =: '1' = > cutopen fread '2021/example3'

most_common =: ((2 * +/) > #)
p1 =: {{ */ #. (-.,:]) most_common y }}

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

p2 =: 0 (([: #. scrub) * ([: #. ox)) in