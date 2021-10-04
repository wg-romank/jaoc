input =: fread 'example1'
numbers =: 0 ". > cutopen input

NB. attempt 1
NB. sums =: 2020 = numbers +/ numbers
NB. muls =: numbers */ numbers
NB. p =: sums *. numbers
NB. flat =: ,/ p
NB. part1 =: */ (>&0 flat) # flat

NB. attempt 2
NB. part1 =: */ ({. 4$. $. (2020 = numbers +/ numbers)) { numbers
NB. part1 =: */ (({.4$.$.) numbers (=&2020@+/) numbers) { numbers
NB. part1 =: */ (numbers {.&(4$.$.)@:(=&2020@+/) numbers) { numbers

NB. part1 =: */ {. (4$.$.@:(2020=+/~) numbers) { numbers

NB. check out ^: for early termination

NB. {.&(4$.$.@(2020=+/~)) numbers

NB. attempt 2 tacit!
part1 =: */&{.&((4$.$.@:(2020=+/~)){])

NB. forks
part1 =: ({~[:{.4$.[:$.2020=+/~)~