class City < ActiveRecord::Base
  belongs_to :tour
  has_many :contact_persons
  has_one :postal_code
  attr_accessible :title
end
