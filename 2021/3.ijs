in =: '1' = > cutopen fread '2021/example3'

counts =: 2 * +/
mul =: */@:#.
p1 =: [: mul [: (-.,:]) (counts > #)

sift =: adverb define
  filter =. (counts u #) = ] NB. dyad
  mask =. [: filter {"1      NB. dyad
  next_iter =. (u sift)^:(1 < [: #])
  (>: x) next_iter (x (mask # ]) y)
)

p2 =: [: mul 0&(<sift ,: >:sift)