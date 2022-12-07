# Fork

Tacit definition of mean `+/ % #` is combinator called *fork*. Combinator is simply a function that is taking another function and producing yet another one. In our previous example, both scan `\` and reduce `/` are such combinator functions. Unlike scan and reduce, *fork* does not have any special symbol assigned to it, instead whenever J interpreter sees 3 functions side-by-side, it will evaluate it in special order.

```r
   (f h g) input
```

Is equivalent to:

```r
   (f input) h (g input)
```

This is exactly what mean is doing, in its case `f` is `+/` and `g` is `#`. It computes both sum of elements and length of the array and then divides result of first by result of second producing mean value.

Let's break down evaluation order below.

```r
   (+/ % #) 1 2 3
```

Here we apply *tacit* definition of mean to array `1 2 3`. Again J does not have any special syntax to define array literal, it is constructed just by stacking numbers next to one another. Having braces around tacit form of mean is important, without braces J will interpret it as consecutive application of primitives on our array, first tally `#` then division `%` (which when called with one argument will return reciprocal or `1 % y`) and finally computing sum on the result (which is single item so it just returns result back).

Applying fork evaluation rules we get.

```r
   (+/ 1 2 3) % (# 1 2 3)
```

Which evaluates to.

```r
   6 % 3
```

Giving us final result of `2`.

Like any other function this tacit form can be given a name and used with that name.

```r
   mean =: +/ % #
   mean 1 2 3
6
```

When it is assigned to a name, outer braces are not necessary anymore.
