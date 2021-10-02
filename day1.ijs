input =: fread 'input1'
numbers =: 0 ". > cutopen input
sums =: 2020 = numbers +/ numbers
muls =: numbers */ numbers
p =: sums *. numbers
flat =: ,// p
part1 =: */ (>&0 flat) # flat
