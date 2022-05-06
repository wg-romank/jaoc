in =: ;: @> cutopen fread '2021/example5'

x =: > ".&.> (0 5 {"1 in)
y =: > ".&.> (2 7 {"1 in)

mask_x =: (=/"1 y)
mask_y =: (=/"1 x)

indices =: {{ (<./"1 y) +&.> i.&.> (1 + >./ - <./)"1 y }}
x_indices =: indices mask_x # x
y_indices =: indices mask_y # y

group =: {{ x ([: { :[ [ ,. ])&.> y }}
grouped_x =: x_indices group  {."1 mask_x # y
grouped_y =: y_indices group~ {."1 mask_y # x

vvv =: {{ 1 (> y) } 10 10 $ 0 }}

p1 =: +/ vvv@> grouped_x , grouped_y

solve =: {{ +/ , y >: 2 }}