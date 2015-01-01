class TourType < ActiveRecord::Base
  attr_accessible :description, :title
  validates :title, :description, presence: true
  has_one :tour
end
