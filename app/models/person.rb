class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_name, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_one :address
  validates :first_name, :middle_name, :last_name, :presence => true

 def name
 	self.first_name + self.middle_name + self.last_name
 end
end