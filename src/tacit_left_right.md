# Left & right identity

We touched briefly that there are two identity functions in J. Left `[` and right `]` identity. And they performed identically for us when solving day 6 problem using sliding windows.

The difference comes when this function is invoked with both arguments, in this case left `[` identity will return its left argument and right `]` - right one respectively.

```r
   3 [ 5
3
   3 ] 5
5
```

As with many things in J, this comes in handy when composing multiple functions. Let's consider a plus `+` primitive and write in a fork expression like following.

```r
   plus =: [ + ]
```

Now this looks like an arbitrary set of symbols to anyone unfamiliar with J's special execution order for *fork*. This *fork* has its both arguments so it will evaluate slightly differently from the one we described previously.

Rules for this one would look like following.

```r
   x (f h g) y
```

Will be evaluated to:

```r
   (x f y) h (x g y)
```

In this case branches of the fork with get both `x` and `y`, then `h` will be applied to their results. When we apply *fork* evaluation rules for our `plus` example we would get behavior similar to following direct definition.

```r
   plus_direct =: {{ (x [ y) + (x [ y) }}
```

Summing that with specifics of identity functions when calling with multiple argument we can see that this complex notation is actually equivalent so a single `+` primitive, since identity in first set of braces will evaluate to `x`, and identity in second - to `y`, leaving us with the same `plus` definition that we wrote a few chapters back.

