class City < ActiveRecord::Base
  belongs_to :tour
  attr_accessible :title
end
