class CreateTourTypes < ActiveRecord::Migration
  def change
    create_table :tour_types do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
