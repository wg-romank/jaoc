in =: "."0 > cutopen fread '2021/example11'

shifts =: 8 2 $ (, > ([,-)&.> 0 1;1 0;_1 1; 1 1)
modify =: +~ [: +/ shifts|.!.0("1 _) 9= 1+]