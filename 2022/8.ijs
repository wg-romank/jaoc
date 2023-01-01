in =: "."0 > cutopen fread '2022/input8' 
vi =: (> |.!.__) >./\
w =: [
n =: |:
e =: |."1
s =: |."1 @: |:
p1 =: vi"1&.w +. vi"1&.n +. vi"1&.e +. vi"1&.s

NB. sc =: ([: i. #) *"1 vi
ss =: (+ (1 * 0&=))@:sc
s1 =: 1 + (>./@:{. < ])
p2 =: ss&.w * ss&.n * ss&.e * ss&.s