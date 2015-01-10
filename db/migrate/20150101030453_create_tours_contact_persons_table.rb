class CreateToursContactPersonsTable < ActiveRecord::Migration
	def self.up
    create_table :contact_people_tours, :id => false do |t|
      t.references :tour
      t.references :contact_person
    end
    #add_index :contact_people_tours, [:tour_id, :contact_person_id]
    #i tadd_index :contact_people_tours, :contact_person_id
  end

  def self.down
    drop_table :contact_people_tours
  end
end
