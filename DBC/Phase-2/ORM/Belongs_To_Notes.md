# Belongs_To Methods

## Setting a particular instance of a class in a table to a variable

jayda = Dog.find(2)

`# => #<Dog id; 2, name: "Jayda", ... >`

## Active Record Convetions

Our tables names should match class names. Duh. Obviously

AR expects to find a class with a name mathching the first argument passed to .belongs_to.

AR expects to find a foreign ky field with a name matching the first argument passed to .belongs_to. 

If we break convention, we would have to configure the association by passing our assocations in as a hash. 

```
class Rating
  belongs_to :dog, { :class_name => "Dog", :foreign_key => :dog_id }
end
```

## Different Ways of Delcaring a Belongs To 

  belongs_to :dog

  belongs_to :judge, { class_name: "Person" }

  belongs_to :judge, { :class_name => "Person"}

  belongs_to :judge, as: :person

## Breaking Convention and Custom Configuration

class Rating < ActiveRecord::Base
  belongs_to :dog
  belongs_to :judge, { class_name: "Person" }
end

This is necessary because AR is looking for a class_name called "Judge" but it won't find one. 
We specify what class to look for: "Person"