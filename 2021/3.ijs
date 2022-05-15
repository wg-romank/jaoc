in =: '1' = > cutopen fread '2021/example3'

counts =: 2 * +/
p1 =: [: */@:#. [: (-.,:]) (counts > #)

sift =: adverb define
  filter =. { (counts u #)
  mask =. [ {"1 (filter = ])
  next_iter =. (u sift)^:(1 < [: #])
  (>: x) next_iter ((x mask y) # y)
)

p2 =: 0&(([: #. <sift) * ([: #. >:sift))