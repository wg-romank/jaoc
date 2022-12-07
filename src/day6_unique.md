# Unique characters

Now we need to somehow check if characters are unique in the window, to do so we can use nub `~.`.
This primitive takes input and produces set of its unique members.

```j
   ~. 'bvwb'
bvw
```

So if we call it on a string that is in the first window, then we can see that its output has last `b` removed.
This is handy but this would not quite cut it for us just yet, we need to compare output of nub `~.` with its original argument.

J has a regular comparison operator `=` but this operator will compare strings symbol by symbol and will return another array as an output, so we can't quite use it here.
Trying to compare strings of unmatching length will produce a length error.

```j
   'bvwb' = 'bvw'
|length error
|   'bvwb'    ='bvw'
```

Fortunately there is another comparison operator that is called match `-:` and it is used mainly for 'tolerant' comparison as described in docs.
Match would return us a single value, `1` in case of match and `0` otherwise and this is exactly the type of flag that we need.

```
   'bvwb' -: 'bvw'
0
```

Let's define our function that will check uniqueness as `is_unique`


```
   is_unique =: {{ y -: ~. y }}
```

Now that might look uncomfortable at first, there is a but of unpacking that can be done here.

`y` is referring to functions right argument so we can mentally substitute it with original string `bvwb`.
If we recall previous chapter we know that J is evaluating right to left so inside of our function 'body' first thing that gets evaluated is `~. y`, meaning finding unique subset of our string. Once that is done all is left 'tolerant' comparison with match `-:` that would return us `1` or `0`.

If we try calling our new function on few inputs we can see that it is working as expected.

```j
   is_unique 'bvwb'
0
   is_unique 'abcd'
1
```
