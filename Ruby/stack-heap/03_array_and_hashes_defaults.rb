# Hashes: You've worked with them before, but let's review.

a = [2, 4, 2, 5, 32, 645, 2]
counts = Hash.new(0)
a.each do |num|
   counts[num] += 1
end

irb(main):039:0> counts
=> {2=>3, 4=>1, 5=>1, 32=>1, 645=>1}



cats = {
  "Gray Kitty" => "Yellow Bunny",
  "Ginger Kitty" => "Beige Bunny",
  "Scottish Fold Kitty" => "Teddy Bear",
  "White Kitty" => "Mini Me",
  "thing" => "stuff"
}



# Why do we have to use hashrocket notation here?

# How can we get the toy associated with a particular cat?
# - multiple different ways, is one better than another?
# - what's the run time complexity?

cats["Gray Kitty"]









# Would the data structure below be better? Why or why not?

cats = [
  { name: "Gray Kitty", toy: "Yellow Bunny" },
  { name: "Ginger Kitty", toy: "Beige Bunny" },
  { name: "Scottish Fold Kitty", toy: "Teddy Bear"},
  { name: "White Kitty", toy: "Mini Me" }
]

# How would we get the toy associated with a particular cat in this structure?
# - what's the run time complexity?

cats.find { |cat| cat[:name] == "Gray Kitty" }[:toy]













# How can we make a 5 x 5 nested array containing the string "hi" in every slot?
# - What happens if we update one of those strings?

a = Array.new(5, Array.new(5, "hi"))
b = Array.new(5, Array.new(5) { "hi" } )
c = Array.new(5) { Array.new(5) { "hi" } }












cats = [
  ["Name", "Age", "Weight", "Favorite Toy"],
  ["Princess Monster Truck", 3, 12, "Shoelace"],
  ["Bob the Bobcat", 10, 14, "Squeaky Mouse"],
  ["Winston Purrchill", 6, 12, "Tinfoil Ball"],
  ["Monty", 13, 13, nil]
]

# How would we use this to find Monty's weight?
# What's not ideal about this?
# What would work better?
