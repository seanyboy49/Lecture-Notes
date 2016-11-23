require 'pry'
# gem install pry-byebug

def do_stuff(thing, other_thing)
  binding.pry
  thing.upcase!
  other_thing = "ha ha"
  puts thing
  puts other_thing
end

something = "helloooo"
another_thing = "hehe"

do_stuff(something, another_thing)
puts something
puts another_thing

# What does this program output?
