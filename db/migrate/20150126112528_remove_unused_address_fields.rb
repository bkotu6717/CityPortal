class RemoveUnusedAddressFields < ActiveRecord::Migration
  def up
  	remove_column :addresses, :city_id
  	remove_column :addresses, :state_id
  	remove_column :addresses, :postal_code_id
  	add_column :addresses, :person_id, :integer
  end
end
