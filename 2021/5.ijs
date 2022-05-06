in =: ;: @> cutopen fread '2021/example5'

x =: > ".&.> (0 5 {"1 in)
y =: > ".&.> (2 7 {"1 in)

NB. =/"1@:[ + =/"1@:]
mask_x =: (=/"1 y)
mask_y =: (=/"1 x)

indices =: {{ (<./"1 y) +&.> i.&.> (1 + >./ - <./)"1 y }}
x_indices =: indices (mask_x # x)
y_indices =: indices (mask_y # y)

d2 =: {{ x ([: { :[ >@:] ; [)&.> y }}
d22 =: {{ x ([: { :[ [ ; >@:])&.> y }}
grouped_x =: ({."1 mask_x # y) d2 x_indices
grouped_y =: ({."1 mask_y # x) d22 y_indices

vvv =: {{ 1 (> y) } 10 10 $ 0 }}

m =: (+/ vvv@> grouped_x) + (+/ vvv@> grouped_y)