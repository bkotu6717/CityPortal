class ContactPerson < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  attr_accessible :address_1, :address_2, :email, :mobile, :name, :phone
end
