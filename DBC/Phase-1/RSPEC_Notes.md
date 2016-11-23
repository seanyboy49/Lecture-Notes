title: RSPEC Notes
tags: ["testing", "rspec"]
notebook: DBC
---
you can't see this ->>> [](testing)
[](rspec)

# RSPEC Notes

## Testing Shortcuts

Test a specific file 

	spec path/to/spec/file.rb 

### Test a specific group of tests in a file 

`rspec --example 'object attributes'`


```

	describe AppleTree do
	  let(:tree){AppleTree.new(2, 5)}


	  #The rest of my tests are wrapped in this statement
	end

```

## Object equivalance

`expect(tree.pick_an_orange.class).to eq Orange` 	#passes if actual == expected


## Truthiness and exestentialism

`expect(tree.has_oranges?).to be false` 	# passes *if* actual == false

`expect(tree.age.class == Fixnum).to be_truthy` 	# passes if actual is truthy (not nil or false)

## Change Observation

`expect {tree.pass_growing_season}.to change {tree.age}.from(0).to(1)` 	#changes object value from old to new

it "can pass a growing season" do 
			expect {tree_grove.grove_pass_growing_season}.to change {tree_grove.trees[OrangeTree][0].age}.by(1)
		end

## Comparisons
        
`expect(tree.pass_growing_season).to be > 0`

## Number of arguments 

arity returns an indiation of the number of arguments accepted by a method. 

If a method can accept any number of arguments, it should return -n-1 where n is the number of required args. 

e.g.

def three(*a)

RSPEC test for this method would be 

	it "accepts any number of arguments" do
	    expect(method(:mean).arity).to eq(-1)
	  end

## Truthiness 

Truthiness literally just means NOT Nil or False 

 if yield(array[i]) evaluates to TRUTHY

Falsiness literally actually seriouslly just means Nil or False 

## Number Range 

context "the tree is old enough to bear fruit" do
      it "should cause the tree to produce apples" do
        tree.age = 6
        expect(tree.pass_growing_season).to be_between(400, 600)
      end
    end

## Inclusion 

expect(tree.fruit_array.include?(pear)).to be false

