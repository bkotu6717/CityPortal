class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_1
      t.string :address_2
      t.references :city
      t.references :state
      t.references :postal_code

      t.timestamps
    end
    add_index :addresses, :city_id
    add_index :addresses, :state_id
    add_index :addresses, :postal_code_id
  end
end
