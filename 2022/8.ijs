in =: "."0 > cutopen fread '2022/input8' 
vi =: [: (] > |.!.__"1) >./\"1
w =: [
n =: |:
e =: |."1
s =: |."1 @: |:
p1 =: vi&.w +. vi&.n +. vi&.e +. vi&.s

NB. sc =: ([: i. #) *"1 vi
ss =: ((1 * 0&=) + ])@:sc
s1 =: 1 + (>./@:{. < ])
p2 =: ss&.w * ss&.n * ss&.e * ss&.s