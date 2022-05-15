in =: '1' = > cutopen fread '2021/example3'

counts =: 2 * +/
p1 =: [: */@:#. [: (-.,:]) (counts > #)

sift =: adverb define
  filter =. x {"1 (counts u #) y
  mask =. x {"1 (filter E."0 y)
  (>: x) (u sift)^:(1 < [: #]) (mask # y)
)

p2 =: 0&(([: #. <sift) * ([: #. >:sift))