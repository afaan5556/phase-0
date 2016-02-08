# 4.2 Numbers, Letters, and Variable Assingment
#### February 8, 2016

### Release 1: Summarize

#### What does puts do?
puts writes out whatever comes immediately after it, and then sets the cursor at a new line.

#### What is an integer and a float?
An integer is a whole number without any decimal places. Examples of integers are:

* - 41
* 2764
* 0
* 9999999941999

A float (or a "floating point number") is a number with any number of decimal places. Examples of floats are:

* 67.949
* -99.99
* 0.000041


#### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When performing division on floats, the result will be a float, which is to say that te result will include as many decimal places as needed to reflect the EXACT result of the division.

So, 15.0 / 4.0 will return 3.75 

However, when performaing dvision on integers, the result will be an integer. This means that the program will no consider decimals and will effectively round-down the result to the closest integer.

So, 15 / 4 will return 3


### Release 2: Try it!

#### Hours in a year

##### Non-leap-year
```
puts 24 * 365
```

##### Leap-year
```
puts 24 * 366
```

#### Minutes in a decade
```
puts 60 * 24 * (365*8 + 366*2)
```

