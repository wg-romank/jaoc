ip =. fread 'input2'
d2 =. cutopen ip

tokenized =: > ;: &.> d2

guards =: 0 2 {"1 tokenized
gg =: |: > ".&.> guards

chars =: 0 { &.> 3 {"1 tokenized
passwords =: _1 {"1 tokenized

counts =: > +/ &.> chars (=&.>) passwords

in_range =: (<: {:) *. (>: {.)

p1 =: +/ counts in_range gg 
