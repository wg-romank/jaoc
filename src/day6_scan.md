# Scan & Sliding Windows

Now in order to scan the input string there's a scan operator `\`, but we cannot just `\ in` since scan operator is a function that is expecting another function (HOF). So we need to pass it some other function first. It takes its argument on the left.

For those familiar with functional programming there's an identity function in J which is defined as `]`. Actually there are two, `[` is also an identity. For our use-case it wouldn't matter which one of those to use, but I will cover differences later.

For those who don't - identity is just a function that passes its arguments through without any modification.

So if we try calling our newly composed scan function on our input we would see something like following.

```j
   ]\ 'bvwbjplbgvbhsrlpgdmjqwftvncz'
b
bv
bvw
bvwb
...
```

As we see this produces prefixes of our input in consecutive manner, this is not quite what we need.
However this function we created `]\` can take an extra argument on the left. This argument defines length of the window in output.

```j
   4 ]\ 'bvwbjplbgvbhsrlpgdmjqwftvncz'
bvwb
vwbj
wbjp
...
```

That's it! We've got our sliding windows. 
