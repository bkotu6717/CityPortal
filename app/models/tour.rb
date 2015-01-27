class Tour < ActiveRecord::Base
  belongs_to :tour_type
  attr_accessible :city_id, :description, :season_end, :season_start, :title, :tour_type_id
end
