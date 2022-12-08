# Rewriting Day 6

Our final solution for day6 problem was something along the lines.

```r
   input =: fread '2022/input6'
   is_unique =: {{ y -: ~. y }}
   solve =: {{ x + (x is_unique\ y) i.1 }}
   part1 =: 4 solve input
   part2 =: 14 solve input
```

Let's try to apply what we learned about *fork* combinator and left and right identity functions in order to create a tacit of out of this as an exercises.

We start with `is_unique` function, we see that it takes a nub `~.` of it's right argument then matches `-:` it with it's right argument again determining if the string passed on the right is matching unique set of its characters.

Using one of the identity functions (does not matter which one again), we can rewrite it as follows.

```r
   is_unique =: {{ (] y) -: (~. y) }}
```

But is exactly how *fork* would evaluate for `] -: ~.`! Again it works with `[` too. If we update solution with this new `is_unique` and re-run it we should see matching results.

We could try calling our tacit form on some input and should see that it performs the same as its direct definition peer.

```r
   (] -: ~.) 'abcd'
1
```

Let's have a look at `solve`. This is a bit more complex, since we have arguments inside braces. We would need need to introduce another primitive here in order to continue to manipulate our formula.

`~` - reflex, is another function that takes a function, it swaps places of arguments, meaning a function would take it's left `x` argument on the right as `y` and same for right `y`, which will be passed on the left as `x`.

Reflex does not do anything for functions like `+`, but we plan to use it for `i.` which finds the index of first occurrence in the array. Using reflex, our last part of `solve` function could look like:

```r
   {{ 1 i.~ (x is_unique\ y) }}
```

We now start to see something that resembles a *fork*, but it has a value in place of it's left branch. Turns out that is fine, in case we have a value / constant on the left branch J will still interpret it as a *fork* since it has some special evaluation rules for that. This wouldn't work however if we would not swap the order on `i.`, that's why we needed to introduce a reflex `~`. Again reflex `~` is a combinator, a function that expects a function and produces another function, similar to scan `\` we already use in this solution.

So if we try to write it in tacit form, we would get a perfectly legal expression in J.

```r
   first_flag =: 1 i.~ is_unique\
```
