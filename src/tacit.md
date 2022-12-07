# Tacit Programming

One of distinct features of J is its brevity and to facilitate it *tacit* or *point-free* programming is often used [1](https://en.wikipedia.org/wiki/Tacit_programming). In short it is a style of programming where arguments are omitted. In J this is particularly easy to achieve since each function takes up to two argument, so it is easy to imagine them on both sides.

If we go back to our `plus` example, previously we defined it via what is called *direct definition* (using `{{ }}`) and referred to our arguments as `x` and `y` for left and right argument respectively.

```r
   plus =: {{ x + y }}
```

However this can be reduced to tacit form, leveraging the fact that `x` is always coming from the left and `y` - from the right.

```r
   plus =: +
```

This definition now becomes trivial so our `plus` function is just a plus `+` primitive which we can inline.

Being able to do this for a single primitive is not very useful on its own, so let's look at the definition of a function that is finding average of an array.

```r
   mean =: {{ (+/ y) % (# y) }}
```

We have some new primitives here, let's go over them one-by-one.

* `/` is another function that is taking a function on its left, similar to `\`, this primitive is called reduce or fold, when called on `y` it will compute sum of `y`s elements.
* `#` is just a simple function that is computing length of `y`, it is called tally.
* `%` is division sign, since both slashes forward and backward are already used for other purposes, J reserves `%` for division.

Given this, if we read the original mean definition we should be able to interpret it as something like *compute sum of the argument and then divide it by its length*, the very definition of average.

However in J you can write this in its tacit form, omitting the argument to get `+/ % #`, let's breakdown how it works.
