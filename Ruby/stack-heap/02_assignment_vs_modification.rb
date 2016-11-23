def bar(cats, hat)
  cats[0].upcase!
  cats[1] = "buffy"
  cats << "duffy"
  cats.delete_at(2)
  cats = ["babbage"]

  hat.upcase!
  hat = "beret"

  puts "in bar"
  p cats
  p hat
  p stuff
end

def foo()
  cats = ["fluffy", "scruffy", "huffy"]
  hat = "fedora"

  bar(cats, hat)

  puts "***********"
  puts "back in foo"
  p cats
  p hat
end

# What output do you expect?
afjoisad = foo()
p afjoisad
hat = foo()
hat = foo()
