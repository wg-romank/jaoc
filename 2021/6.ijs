NB. in =: 3 4 3 1 2
in =: ". , > ;: fread '2021/input6'

counts =: (i.9) +/@:E."(0 _) in

step =: monad define
  zeroed =. 0 { y
  shifted =. 1 |.!.0 y
  modify =. (,~ zeroed) (6 8}) 9 $ 0
  shifted + modify
)

p1 =: +/ step^:80 counts
p2 =: +/ step^:256 counts