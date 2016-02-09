# 4.2 Numbers, Letters, and Variable Assignment
#### February 8, 2016
#### Links to individual challenges:

* [Challene 4.2.1](defining-variables.rb)
* [Challene 4.2.2](simple-string.rb)
* [Challene 4.2.3](basic-math.rb)

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

When performing division on floats, the result will be a float, which is to say that the result will include as many decimal places as needed to reflect the EXACT result of the division.

So, 15.0 / 4.0 will return 3.75 

However, when performing division on integers, the result will be an integer. This means that the program will no consider decimals and will effectively round-down the result to the closest integer.

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


### Release 7: Reflect

#### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby compares the object type of each number and if they are the same, then it performs the arithmetic. If the numbers are integers, Ruby rounds down to the nearest whole number when performing division. If any one of the numbers is a float, then  Ruby computes a float result and does not round down.  

#### What is the difference between integers and floats?
See answer above

#### What is the difference between integer and float division?
See answer above

#### What are strings? Why and when would you use them?
Strings are essentially groups of letters. Examples of strings are:

* "This is a string"
* "This is also a string"
* "  "

#### What are local variables? Why and when would you use them?
A local variable is a variable assignment of key-word to a number or a string (or other Ruby objects)
We use them so we do not have to repeatedly call and use the objects by their content.

#### How was this challenge? Did you get a good review of some of the basics?
This challenge was far to easy in its content (unless I terribly misunderstood the instructions) but not so easy with the instructions on using rspec. As a Windows users that set up a Virtual Machine in week-0, I had a few stressful hours trying to get rspec to work on my local git Bash terminal before figuring out that I had to wake up my sleepy Vagrant and run a local and a virtual terminal in parallel.