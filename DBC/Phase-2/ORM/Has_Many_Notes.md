# Has Many Methods

When we declare a has many assocation, the first argument must be plural

class Dog < ActiveRecord::Base
  belongs_to :owner, { class_name: "Person" }
  has_many :ratings
end

## Has_Many Methods

#ratings.<<

#rating_ids

#rating_ids=

#ratings

#rating.create"

#ratings.create!

## Delcaring a Has Many Assocation

If we break convention and need to configure, pass a hash

class Dog < ActiveRecord::Base
  has_many :ratings, { :class_name => "Rating", :foreign_key => :dog_id }
end

## Accessing attributes - 2 ways

	tenley.ratings.first.judge_id - because judge_id has a getter method delcared on it. 

*OR*

	tenley.ratings.first[:judge_id] - because it's a hash so I'm accessing the value of :judge_id with a colon

## Adding shit 

`new_rating = Rating.new(coolness: 8, cuteness: 10, judge_id: 4)`
	# => #<Rating id: nil, coolness: 8, ... dog_id: nil, ... >

`tenley.ratings << new_rating`
	# => #<ActiveRecord::Associations::CollectionProxy [ ... ]>

`new_rating`
	# => #<Rating id: 8, coolness: 8, ... dog_id: 1, ... >

`tenley.ratings.include? new_rating`
	# => true

## Mass Reassignment of attributes 

`rating_ids = tenley.rating_ids`
	# => [1, 3, 5, 8, 9]

`tenley.ratings = []`
	# => []

`tenley.ratings.empty?`
	# => true

`Rating.find rating_ids`
	# => [#<Rating id: 1, ... dog_id: nil, ... >, #<Rating id: 3, ... >, #<Rating id: 5, ... >, #<Rating id: 8, ... >, #<Rating id: 9, ... >]

`tenley.rating_ids= rating_ids`
	# => [1, 3, 5, 8, 9]

`tenley.ratings`
	# => #<AR::Assoc::CollectionProxy [#<Rating id: 1, ... >, #<Rating id: 3, ... >, #<Rating id: 5,  ... >, #<Rating id: 8, ... >, #<Rating id: 9, ... >]>
