class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  belongs_to :postal_code
  belongs_to :person
  attr_accessible :address_1, :address_2
end
