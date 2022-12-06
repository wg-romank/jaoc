# Scan & Sliding Windows

Now in order to scan the input string there's a scan operator `\`, but we cannot just `\ in` since scan operator is a function that is expecting another function (HOF).
For those familiar with functional programming there's an identity function in J which is defined as `]`. For those who don't - identity is just a funciton that passes its arguments through without any modification.

Actually there are two, `[` is also an identity. For our use-case it wouldn't matter which one of those to use, but I will cover differences later.

So if we try calling our newly composed scan function on our input we would see something like following.

```j
   ]\ 'bvwbjplbgvbhsrlpgdmjqwftvncz'
b
bv
bvw
bvwb
...
```

As we see this produces prefixes of our input in consequtive manner, this is not quite what we need.
However this function we created `]\` can take an extra argument on the left. This argument defines length of the window in output.

```j
   4 ]\ 'bvwbjplbgvbhsrlpgdmjqwftvncz'
bvwb
vwbj
wbjp
...
```

That's it! We've got our sliding windows. 
