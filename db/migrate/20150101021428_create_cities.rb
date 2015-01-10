class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :title
      t.references :tour
      t.references :contact_person

      t.timestamps
    end
    add_index :cities, :tour_id
    #add_index :cities, :contact_person_id
  end
end
