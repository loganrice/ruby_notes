# How to Convert from Decimal to Binary in Ruby

Since the binary system is the internal language of computers it can be useful
to know how to convert our primary base 10 number system into a binary (base 2) one.

Converting a positive integer (a number without a decimal) is actually very easy in Ruby.
```
 115.to_s(2)
#=> "1110011"
```

However, converting decimals and negatives requires a little more code. Let's
first start with a positive example to understand how this works.
#### Convert 115 to binary
1. Divide the number by 2, and continue dividing each remainder until zero is reached.
   1. [115, 57, 28, 14, 7, 3, 1]
2. If the remainder is even then assign it a zero; odds are assigned a 1 (two's compliment)
   1. [1, 1, 0, 0, 1, 1, 1]
3. Reverse the order of the results
   1. [1, 1, 1, 0, 0, 1, 1]

#### Convert -115 to binary
1. Make it a positive number and follow Steps 1 through 3 above
2. Add 1 to the number
1. 1110011 + 0000001 = 1110111
