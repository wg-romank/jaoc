# Introduction

Our approach to this problem on a high level will be following: we want to split our input into windows of 4 characters, those windows will be sliding, characters would overlap, since we want to find a first occurrence. Then we want to check whether characters in the input are unique and if so we would flag them with some marker. Finally we want to find first occurrence of that marker in transformed input - this will be our answer.

To get started we can take our input and save it in some file `2020/input6` which we then can read with J-builtin `fread`. I will be using one of example inputs to illustrate how J operations work.

```
   in =: fread '2022/input6'
   in
bvwbjplbgvbhsrlpgdmjqwftvncz
```

