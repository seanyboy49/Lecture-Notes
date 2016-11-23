### Iterating through a hash


	 def numbers_in_hash(input_hash, name) 
	 	p input_hash[name]
	 end

 hash = {betty: "904-294-1390",
                    tom:   "387-122-8976",
                    ally:  "549-890-1029",
                    jimmy: "432-897-8120"}

`numbers_in_hash(hash, :tom)`

### Accessing keys and values in a hash using the .keys method

hash = {john: "123-456-7891",
		sean: "222-555-8873",
		max: "012-311-3134"}

hash.keys[0] => john
hash[hash.keys[0]] => "123-456-7891"

### each_key 
Calls block once for each key in a hash, passing the key as a parameter. 
Returns the hash. 

### select{ |key,value| block} => new hash 
h = { a: 100, b: 200, c: 300}
h.select { |k,v| k.to_s < "c"}

### [fetch](http://www.virtuouscode.com/2009/03/16/go-fetch/)

h = {:foo => 1, :bar=> 2}
  h[:buz] # => nil
  h.fetch(:buz) # => IndexError: key not found
  h.fetch(:buz){|k| k.to_s * 3} # => "buzbuzbuz"

 You can use the optional block argument to #fetch to either return an alternate value, or to take some arbitrary action when a value is missing. 

