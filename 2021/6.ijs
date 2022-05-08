NB. in =: 3 4 3 1 2
in =: ". , > ;: fread '2021/input6'

counts =: (i.9) +/@:E."(0 _) in

step =: monad define
  NB. left side of a fork
  shifted =. 1 |.!.0 y

  NB. right side of a fork
  zeroed =. 0 { y
  modify =. (2#zeroed) (6 8}) 9 $ 0

  shifted + modify
)

p1 =: +/ step^:80 counts
p2 =: +/ step^:256 counts

NB. can also be
NB. for performance?
shift =: 1 |.!.0 ]
count_0s =: (9$0) (6 8})~ (0&{ , 0&{)
step_tacit =: shift + count_0s
run =: +/@:(step_tacit^:[)