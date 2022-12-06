# Basics

Unlike many common languages J is evaluated right to left with no operator precedance.
This is a common warning for newcommer, `*` does not have priority over `+` in J.

Expression `5 * 3 + 1` evaluates to 20, not 16.

Functions take at most two arguments and they are passed in infix form.
There are reserved names `x` and `y` for function's left and right argument respectively.

```j
   plus =: {{ x + y }}

   3 plus 5
8
```

Here we can define a function `plus` and call it.
J is a dynamically typed language, so there are no separate type definitions. Type will be inferred.

J is an array programming language, which means its primitives work on arrays.
To define an array J simply uses ` ` space as a separator and no additional syntax constructs.

```
   3 plus 0 2 3 4
3 5 6 7
```

Here we call our `plus` function again with its right argument array and this would evaluate to another array.
There is not need to additional looping / calling collection functions, `+` that we use in our `plus` definition is *rank-polymorphic*.
Like many other primitives provided.

There are quite a few primitives baked into the language that are defined as special characters, normally used for other purposes.
For example a curly brace `{` can be used to fetch elements from the array by their index.

```
   1 { 3 5 6 7
5
```

Many more primitives can be found at the language wiki vocabulary [1]. This can be overwhelming so we will explain their usage 1-by-1 as we solve puzzles from AoC.
