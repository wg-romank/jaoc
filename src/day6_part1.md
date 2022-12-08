# Putting it all together

We have defined a function that tests if string consists of unique set of characters and we also covered how to scan our input in fixed size windows. Previously we used identity `]` to compose our scan operator `]\`, but we can actually just substitute our identity for `is_unique` to array of flag markers as an output.

```r
   4 is_unique\ 'bvwbjplbgvbhsrlpgdmjqwftvncz'
0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
```

This returns us array of flags, and all that is left is to find a first occurrence of `1` in this array. To do this we can use index of `i.`, which returns first occurrence of an element in array.
`i.` is a counter-intuitive, since it takes array to search in on the left and elements to look for on the right so we need an extra pair of braces to make sure ordering (remember J evaluates right-to-left)

```r
   (4 is_unique\ 'bvwbjplbgvbhsrlpgdmjqwftvncz') i. 1
1
```

With this we have everything to put together solution for the first part of the problem, right? Well, not quite. As we use sliding windows, indexes we output are of those windows. So instead of getting `5` for first example input in description we would get `1` and we need to add window length to it.

Fortunately as J evaluates right-to-left we can just add `4 +` to our function body to get correct result.

```r
   solve_part1 =: {{ 4 + (4 is_unique\ y) i. 1 }}
```

As we can see, we have some duplication here, we can actually extract `4` as another function argument (it would be left argument with reserved name `x`).

```r
   solve =: {{ x + (x is_unique\ y) i.1 }}
```

Here is a complete solution.

```r
   input =: fread '2022/input6'
   is_unique =: {{ y -: ~. y }}
   solve =: {{ x + (x is_unique\ y) i.1 }}
   part1 =: 4 solve input
   part2 =: 14 solve input
```

