class CreateContactPeople < ActiveRecord::Migration
  def change
    create_table :contact_people do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.references :city
      t.references :state
      t.string :phone
      t.string :mobile
      t.string :email

      t.timestamps
    end
    add_index :contact_people, :city_id
   # add_index :contact_people, :postal_code_id
    add_index :contact_people, :state_id
  end
end
