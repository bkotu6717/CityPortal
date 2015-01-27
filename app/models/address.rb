class Address < ActiveRecord::Base
  belongs_to :person
  attr_accessible :address_1, :address_2, :person_id
end
