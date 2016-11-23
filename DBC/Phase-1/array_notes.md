### Badass way of creating an array 

words = %w{all i can say is that my life is pretty plain}
=> ["all", "i", "can", "say", "is", "that", "my", "life", "is", "pretty", "plain"]


### sort_by
Sorts the array in place by mapping the values in the array to the code block. But it doesn't modify the values output. 

objects.sort_by { |a| a.to_s }

calling .to_s 

### find_all and select 
Returns an array containing elements of enum for which the given block returns true

(1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]

### Reject is like the opposite of find_all and select 
Returns an array containing all elements of enum for which the given block retruns false 

### Find 
Passes each entry to the block and returns the first for which block is not false. 

(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35

### Each_with_index 
Calls block with two arguments, the item and index for each iten. 

def odd_indexed_elements(array)
	new_array = []
	array.each_with_index { |value, index| new_array << value if index % 2 == 1}
	new_array
end 

### Concat 
 
Appends the elements of other_arry to self.
Returns array. 

[ "a", "b" ].concat( ["c", "d"] ) #=> [ "a", "b", "c", "d" ]

### Proc/Symbol shortcut 

.map(&:length).reduce(:+)

@crates.map(&:weight).reduce(0, :+)

### Reduce 

(5..10).reduce(1, :*)    #=> 151200

If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.
