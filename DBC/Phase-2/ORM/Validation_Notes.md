# The Purpose of Validation

When we attempt to save a new record to the database, AR will validate the object before attmepting to save it. 

[validation helper](http://guides.rubyonrails.org/active_record_validations.html#validation-helpers)

class Dog < ActiveRecord::Base
  include USGeography

  has_many :ratings
  belongs_to :owner, { class_name: "Person" }

  # owner must point to a record that actually exists (Person object)
`validates :owner, { :presence => true }`

  # name and license are required
`validates :name, :license, { :presence => true }`

  # license must be unique for every dog
`validates :license, { :uniqueness => true }`

  # license must start with two capital letters, a dash, then any characters
`validates :license, format: { with: /\A[A-Z]{2}\-/ }`

  # age is not required, but if it's present, can't be less than 0
`validates :age, { :numericality => { greater_than_or_equal_to: 0 },`
                    `:allow_blank  => true }`

`validate :license_from_valid_state`

#Below are custom validation methods

  def license_from_valid_state
    unless self.license.instance_of? String
      errors.add :license, "must be a string"
      return
    end

    abbreviation = self.license[0..1]
    unless valid_state_abbreviation? abbreviation
      errors.add :license, "must be from a valid US state"
    end
  end
end 

