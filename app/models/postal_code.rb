class PostalCode < ActiveRecord::Base
  attr_accessible :city_id, :title
  belongs_to :city
end
