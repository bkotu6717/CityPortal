class Tour < ActiveRecord::Base
  belongs_to :tour_types
  has_and_belongs_to_many :contact_persons
  attr_accessible :city_id, :description, :season_end, :season_start, :title
end
