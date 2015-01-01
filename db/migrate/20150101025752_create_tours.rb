class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title
      t.references :tour_type
      t.integer :city_id
      t.text :description
      t.datetime :season_start
      t.datetime :season_end

      t.timestamps
    end
    add_index :tours, :tour_type_id
  end
end
