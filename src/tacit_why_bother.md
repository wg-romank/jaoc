# Why bother?

We have seen how with clever interpretation we can define our mean as a set of seemingly random symbols `+/ % #`. And a natural question arises, why should you ever do this?

What is wrong with the following direct definition?

```r
   mean =: {{ (+/ y) % (# y) }}
```

There is no definitive answer, some people writing J enjoy tacit style because of brevity, there is an argument that it improves performance of the interpreter, because tacit definitions are parsed first then executed. Number of performance optimizations for tacit forms are listed on J's wiki.

Surprisingly but for me personally tacit forms make it easier to work with code, move things around, reorganize, refactor. I guess it enables it due to the fact that tacit definitions needs to be read in specific order like formulas and have certain rules can be applied when manipulating them almost mechanically like algebraic constructs.
