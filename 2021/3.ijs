in =: '1' = > cutopen fread '2021/example3'

counts =: 2 * +/
p1 =: [: */@:#. [: (-.,:]) (counts > #)

scrub =: dyad define
  least =. x {"1 (counts < #) y
  mask =. x {"1 (least E."0 y)
  new_y =. mask # y
  if. (# new_y) > 1 do. (>: x) scrub new_y else. new_y end.
)

ox =: dyad define
  least =. x {"1 (counts >: #) y
  mask =. x {"1 (least E."0 y)
  new_y =. mask # y
  if. (# new_y) > 1 do. (>: x) ox new_y else. new_y end.
)

p2 =: 0 (([: #. scrub) * ([: #. ox)) in