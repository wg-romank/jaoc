in =: '1' = > cutopen fread '2021/example3'

counts =: 2 * +/
mul =: */@:#.
p1 =: [: mul [: (-.,:]) (counts > #)

counts =: 2 * +/
fltr =: {{ (counts u #) = ] }}
mask =: {{ [: (u fltr) {"1 }}
sift =: {{ ([: >: [) $:^:(1 < [: #]) ((u mask) # ]) }}

p2_scrub =: <sift
p2_ox =: >:sift

p2 =: [: mul 0 (p2_ox ,: p2_scrub) ]