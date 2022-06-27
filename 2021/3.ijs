in =: '1' = > cutopen fread '2021/example3'

counts =: 2 * +/
mul =: */@:#.
p1 =: [: mul [: (-.,:]) (counts > #)

counts =: 2 * +/
fltr =: {{ (counts u #) = ] }}
mask =: {{ [: (u fltr) {"1 }}
incrl =: [: >: [ NB. increment left operand in dyadic phrase
one_or =: 1 < [: # ] NB. return true if right input size is more than one
sift =: {{ incrl $:^:one_or ((u mask) # ]) }}

NB. has to be bound to a name, otherwise
NB. $: will capture wrong scope to recurse
p2_scrub =: <sift
p2_ox =: >:sift

p2 =: [: mul 0 (p2_ox ,: p2_scrub) ]