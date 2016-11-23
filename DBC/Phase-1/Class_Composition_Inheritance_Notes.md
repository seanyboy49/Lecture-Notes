### Initializing a class with a hash

````

	class Soda
	  attr_reader :brand, :price

	  def initialize(args = {})
	    @brand = args[:brand]
	    @price = args[:price]
	  end
	end

	pepsi = Soda.new({brand: "Pepsi", price: 1})


````

## has-a relationship. 

Child has-a Other that it uses to get work done. Child is not a descendant of the Other class. 

class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

## Instantiating many objects at once 

def add_fruit
    rand(self.class::ANNUAL_FRUIT_YIELD).times { @fruit_array << self.class::FRUIT_TYPE.new }
  end

def self.create_bikes_array(bike_array)
		bike_array.each do |bike|
			p bike = Bike.new(bike)
		end
	end