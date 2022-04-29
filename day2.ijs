ip =. fread 'example2'
d2 =. cutopen ip

tokenized =: > ;: &.> d2

guards =: 0 2 {"1 tokenized
gg =: |: > ".&.> guards

chars =: 0 { &.> 3 {"1 tokenized
passwords =: _1 {"1 tokenized

NB. counts =: > +/ &.> chars (=&.>) passwords
counts =: > chars +/@E.&.> passwords

in_range =: (<: {:) *. (>: {.)

p1 =: +/ counts in_range gg 
