# There are four ways of invoking a function, each with their own context for #this 

## 1. function()

* this = the window

or you can invoke "use strict"

## 2. object = {}

## 3. function.call()
			function.apply()

* this = value of the first parameter you call 

f.call(123) => #this is 123
f.call( {a:123, b: 321} ) => #this is {a:123, b: 321}

## 4. a = new function()

typically for a constructor
* this =
